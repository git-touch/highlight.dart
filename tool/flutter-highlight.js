import fs from "fs";
import path from "path";
import _ from "lodash";
import postcss from "postcss";
import { NOTICE_COMMENT } from "./utils";

const rootDir = "../vendor/highlight.js/src/styles";
const destDir = "../flutter_highlight/lib/themes";

/**
 * white, #fff, #ffffff, rgba(0,0,0,0) -> Flutter color
 *
 * @param {string} color
 */
const covertColor = color => {
  if (color === "inherit") {
    // FIXME:
    return;
  }

  if (color.includes("url(")) {
    // FIXME:
    return;
  }

  if (color.startsWith("rgba(")) {
    return `Color.fromRGBO${color.slice(4)}`;
  } else {
    let rgb = "";

    if (color === "white") {
      rgb = "ffffff";
    } else if (color === "black") {
      rgb = "000000";
    } else if (color === "navy") {
      rgb = "000080";
    } else if (color === "gold") {
      rgb = "ffd700";
    } else if (color.startsWith("#")) {
      rgb = color.slice(1);
      if (rgb.length === 3) {
        rgb = rgb
          .split("")
          .map(x => x + x)
          .join("");
      }
      return `Color(0xff${rgb})`;
    } else {
      console.log(`color ignored: ${color}`);
    }
  }
};

/**
 * flutter_highlight/lib/themes/*
 * flutter_highlight/lib/theme_map.dart
 */
export function style() {
  let all = [NOTICE_COMMENT, "const themeMap = {"];

  // ["github.css"]
  fs.readdirSync(rootDir).forEach(file => {
    if (path.extname(file) != ".css") return;
    const fileName = path.basename(file, ".css");
    let varName = _.camelCase(fileName + "Theme").replace(/a11y/i, "a11y");

    all[0] += `import 'themes/${fileName}.dart';`;
    all[1] += `'${fileName}': ${varName},`;

    const ast = postcss.parse(fs.readFileSync(path.resolve(rootDir, file)));
    // console.log(ast);

    const obj = {};
    ast.walkRules((rule, index) => {
      // FIXME: a11y media query
      if (rule.parent.type === "atrule" && rule.parent.name === "media") {
        return;
      }

      rule.selectors.forEach(selector => {
        if (/\s+/.test(selector)) {
          // FIXME: nested selector
          selector = selector.split(/\s+/).slice(-1)[0];
        }
        if (selector === ".hljs") selector = "root";
        selector = selector.replace(".hljs-", "");

        const style = {};
        rule.nodes.forEach(item => {
          if (item.type === "comment") {
            return;
          } else if (item.type === "decl") {
            switch (item.prop) {
              case "color": {
                const flutterColor = covertColor(item.value);
                if (flutterColor) {
                  style.color = flutterColor;
                }
                break;
              }
              case "background":
              case "background-color": {
                const flutterColor = covertColor(item.value);
                if (flutterColor) {
                  style.backgroundColor = flutterColor;
                }
                break;
              }
              case "font-style":
                style.fontStyle = `FontStyle.${item.value}`;
                break;
              case "font-weight":
                if (item.value === "bolder") {
                  item.value = "bold"; // FIXME:
                }
                style.fontWeight = `FontWeight.${item.value}`;
                break;
            }
          } else {
            console.log(`rule ignored: ${item.type}`);
          }
        });

        const styleEntries = Object.entries(style);
        if (styleEntries.length) {
          if (!obj[selector]) {
            obj[selector] = style;
          } else {
            Object.assign(obj[selector], style);
          }
        }
      });
    });

    let code = `${NOTICE_COMMENT}import 'package:flutter/painting.dart'; const ${varName} = {`;
    Object.entries(obj).forEach(([selector, v]) => {
      code += `'${selector}': TextStyle(${Object.entries(v)
        .map(([k, v]) => `${k}:${v}`)
        .join(",")}),`;
    });
    code += "};";

    fs.writeFileSync(path.resolve(destDir, `${fileName}.dart`), code);
  });

  all[1] += "};";
  fs.writeFileSync("../flutter_highlight/lib/theme_map.dart", all.join("\n"));
}

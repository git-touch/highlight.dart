// Generate Flutter style from CSS files

const fs = require("fs");
const assert = require("assert");
const _ = require("lodash");
const { execSync } = require("child_process");
const path = require("path");
const postcss = require("postcss");

const rootDir = path.resolve(__dirname, "node_modules/highlight.js/styles");
const destDir = path.resolve(__dirname, "../flutter_highlight/lib/styles");

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

let all = "var allStyles = {";

// ["github.css"]
fs.readdirSync(rootDir).forEach(file => {
  if (path.extname(file) != ".css") return;
  const fileName = path.basename(file, ".css");
  let varName = _.snakeCase(fileName);
  if (varName === "default") {
    varName = "def";
  }

  all = `import 'styles/${fileName}.dart' as ${varName}; ` + all;
  all += `'${fileName}': ${varName}.style,`;

  const ast = postcss.parse(fs.readFileSync(path.resolve(rootDir, file)));
  // console.log(ast);

  let code = "import 'package:flutter/painting.dart'; var style = {";

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
      selector = selector.replace(".hljs-", "").replace(".hljs", "container");

      const style = {};
      rule.nodes.forEach(item => {
        if (item.type === "decl") {
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
        code += `'${selector}': TextStyle(${styleEntries
          .map(([k, v]) => `${k}:${v}`)
          .join(",")}),`;
      }
    });
  });

  code += "};";

  fs.writeFileSync(path.resolve(destDir, `${fileName}.dart`), code);
});

all += "};";
fs.writeFileSync(
  path.resolve(__dirname, "../flutter_highlight_gallery/lib/all_styles.dart"),
  all
);

// format
execSync(`dartfmt --overwrite ${path.resolve(destDir, "*.dart")}`);

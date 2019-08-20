// Generate Flutter style from CSS files

const fs = require("fs");
const assert = require("assert");
const { execSync } = require("child_process");
const path = require("path");
const postcss = require("postcss");

const rootDir = path.resolve(__dirname, "node_modules/highlight.js/styles");
const destDir = path.resolve(__dirname, "../flutter_highlight/lib/styles");

// ["github.css"]
fs.readdirSync(rootDir).forEach(file => {
  if (path.extname(file) != ".css") return;

  const ast = postcss.parse(fs.readFileSync(path.resolve(rootDir, file)));
  // console.log(ast);

  let code = "import 'package:flutter/painting.dart'; var style = {";

  ast.walkRules((rule, index) => {
    // const keyword = rule.selector.slice(6); // remove .hljs-
    // console.log(keyword);
    // const selectors = rule.selector.split(".");
    // console.log(rule.selectors);
    // console.log(rule.nodes[0].type === "decl");

    rule.selectors.forEach(selector => {
      selector = selector.trim().replace(".hljs-", "");
      code += `'${selector}': TextStyle(`;

      const item = rule.nodes[0];

      if (item.type === "decl") {
        switch (item.prop) {
          case "color":
            let rgb = "";
            if (item.value.startsWith("#")) {
              rgb = item.value.slice(1);
              if (rgb.length === 3) {
                rgb = rgb
                  .split("")
                  .map(x => x + x)
                  .join("");
              }
            } else {
              console.log(item.value);
            }
            code += `color: Color(0xff${rgb}),`;
            break;
          case "font-style":
            assert(item.value === "italic");
            code += `fontStyle: FontStyle.italic,`;
            break;
          case "font-weight":
            code += `fontWeight: FontWeight.${item.value},`;
            break;
        }
      } else {
        throw new Error();
      }

      code += "),";
    });
  });

  code += "};";

  fs.writeFileSync(
    path.resolve(destDir, `${path.basename(file, ".css")}.dart`),
    code
  );
});

// format
execSync(`dartfmt --overwrite ${path.resolve(destDir, "*.dart")}`);

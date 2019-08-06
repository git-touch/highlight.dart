const fs = require("fs");
const path = require("path");
const _ = require("lodash");
const { execSync } = require("child_process");
const hljs = require("highlight.js");

const dir = path.resolve(__dirname, "node_modules/highlight.js/lib/languages");

let code = `import 'flutter_highlight.dart';`;

function normalizeLanguageName(name) {
  if (/^\d/.test(name)) {
    name = "lang" + name;
  }
  return _.camelCase(name);
}

fs.readdirSync(dir).forEach(file => {
  const item = require(path.resolve(dir, file))(hljs);
  let lang = normalizeLanguageName(path.basename(file, path.extname(file)));

  code += `var ${lang} = Language(`;

  Object.entries(item).forEach(([key, value]) => {
    switch (key) {
      case "case_insensitive":
        code += `caseInsensitive:${value},`;
        break;
      case "aliases":
        code += `${key}:${JSON.stringify(item[key])},`;
        break;
      case "keywords":
        if (typeof item.keywords === "string") {
          code += `${key}:[${item.keywords
            .replace(/\$/g, "\\$")
            .split(" ")
            .map(x => `'${x}'`)}],`;
        } else {
          if (item.keyword) {
          }
          // console.log(item.keywords);
        }
        break;
      case "begin":
        break;
      case "end":
        break;
      default:
        console.log(key);
    }
  });

  code += ");";
});

const destFile = path.resolve(
  __dirname,
  "../flutter_highlight/lib/languages.dart"
);

fs.writeFileSync(destFile, code);

execSync("dartfmt --overwrite " + destFile) && 0;

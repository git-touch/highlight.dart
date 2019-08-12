// @ts-check
import fs from "fs";
import path from "path";
import { camelCase } from "lodash-es";
import { execSync } from "child_process";
import hljs from "highlight.js";

const dir = path.resolve(__dirname, "node_modules/highlight.js/lib/languages");

let code = `import 'highlight.dart';`;
let all = "var all = {";

function normalizeLanguageName(name) {
  if (/^\d/.test(name)) {
    name = "lang" + name;
  }
  return camelCase(name);
}

const files = fs.readdirSync(dir);

files.forEach(file => {
  const item = require(path.resolve(dir, file))(hljs);
  let lang = normalizeLanguageName(path.basename(file, path.extname(file)));

  try {
    const data = JSON.stringify(item, (k, v) => {
      if (v instanceof RegExp) {
        return v.source;
      }
      return v;
    });
    code += `var ${lang} = ${data};`;
    all += `'${lang}': ${lang},`;
  } catch (err) {
    console.error(err);
  }
});

const destFile = path.resolve(__dirname, "../highlight/lib/languages.dart");

code = code.replace(/\$/g, "\\$"); // $ -> \$
all += "};";

fs.writeFileSync(destFile, code + all);

execSync("dartfmt --overwrite " + destFile) && 0;

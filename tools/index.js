// @ts-check
import fs from "fs";
import path from "path";
import { camelCase } from "lodash-es";
import { execSync } from "child_process";
import hljs from "highlight.js";

const dir = path.resolve(__dirname, "node_modules/highlight.js/lib/languages");

let common = `import 'highlight.dart';`;
let code = "";
let all = "var all = {";

function normalizeLanguageName(name) {
  if (/^\d/.test(name)) {
    name = "lang" + name;
  }
  return camelCase(name);
}

const hljsKeys = Object.keys(hljs);
const usedKeyMap = {};
const files = fs.readdirSync(dir);

files.forEach(file => {
  const item = require(path.resolve(dir, file))(hljs);
  let originalLang = path.basename(file, path.extname(file));
  let lang = normalizeLanguageName(originalLang);

  try {
    const data = JSON.stringify(item, (k, v) => {
      if (v instanceof RegExp) {
        return v.source;
      }

      // end: boolean -> string
      if (k === "end") {
        return v.toString();
      }

      // string -> string[]
      if (k === "subLanguage" && typeof v === "string") {
        return [v];
      }

      // Reuse common values
      for (const key of hljsKeys) {
        if (v === hljs[key]) {
          usedKeyMap[key] = true;
          return `hljs.${key}`;
        }
      }

      return v;
    });

    code += `var ${lang} = ${data};`;
    all += `'${originalLang}': ${lang},`;
  } catch (err) {
    // console.error(err);
  }
});

const destFile = path.resolve(__dirname, "../highlight/lib/languages.dart");

Object.keys(usedKeyMap).forEach(key => {
  common += `var ${key}=${JSON.stringify(hljs[key], (k, v) => {
    if (v instanceof RegExp) {
      return v.source;
    }

    // end: boolean -> string
    if (k === "end") {
      return v.toString();
    }

    // string -> string[]
    if (k === "subLanguage" && typeof v === "string") {
      return [v];
    }

    return v;
  })};`;
});
all += "};";

let result = common + code + all;
result = result.replace(/"hljs\.(.*?)"/g, "$1");
result = result.replace(/\$/g, "\\$"); // $ -> \$

fs.writeFileSync(destFile, result);

execSync("dartfmt --overwrite " + destFile) && 0;

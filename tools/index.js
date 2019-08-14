// @ts-check
import fs from "fs";
import path from "path";
import { camelCase } from "lodash-es";
import { execSync } from "child_process";
import hljs from "highlight.js";

const dir = path.resolve(__dirname, "node_modules/highlight.js/lib/languages");

function normalizeLanguageName(name) {
  if (/^\d/.test(name)) {
    name = "lang" + name;
  }
  return camelCase(name);
}

const hljsKeys = Object.keys(hljs);
const usedKeyMap = {};

let all = "var all = {";

fs.readdirSync(dir).forEach(file => {
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

    fs.writeFileSync(
      path.resolve(
        __dirname,
        `../highlight/lib/languages/${originalLang}.dart`
      ),
      `import 'package:highlight/common.dart'; var ${lang}=${data};`
        .replace(/"hljs\.(.*?)"/g, "$1")
        .replace(/\$/g, "\\$")
    );

    all = `import 'languages/${originalLang}.dart';` + all;
    all += `'${originalLang}': ${lang},`;
  } catch (err) {
    // console.error(err);
  }
});

// all.dart
all += "};";
fs.writeFileSync(
  path.resolve(__dirname, `../highlight/lib/all.dart`),
  all.replace(/\$/g, "\\$")
);

// common.dart
let common = `import 'highlight.dart';`;
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
fs.writeFileSync(
  path.resolve(__dirname, `../highlight/lib/common.dart`),
  common.replace(/\$/g, "\\$")
);

// format
execSync(
  `dartfmt --overwrite ${path.resolve(__dirname, "../highlight/lib/**/*")}`
);

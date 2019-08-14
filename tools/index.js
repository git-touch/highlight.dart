// @ts-check
import fs from "fs";
import path from "path";
import { camelCase } from "lodash-es";
import { execSync } from "child_process";
import hljs from "highlight.js";

const dir = path.resolve(__dirname, "node_modules/highlight.js/lib/languages");

function generateMode(obj, matchCommonKey = true) {
  if (matchCommonKey) {
    for (const modeKey of modeKeys) {
      if (hljs[modeKey] === obj) {
        return modeKey;
      }
    }
  }

  let code = "Mode(";
  Object.entries(obj).forEach(([k, v], i, arr) => {
    if (k === "exports") return; // CPP

    if (k === "containts") k = "contains"; // Seems be a typo
    if (v instanceof RegExp) v = v.source;
    if (k === "end" && typeof v === "boolean") v = v.toString();
    if (k === "subLanguage" && typeof v === "string") {
      v = [v];
    }

    switch (k) {
      case "starts":
        code += `${k}: ${generateMode(v)}`;
        break;
      case "contains":
      case "variants":
        if (v == null) {
          code += `${k}: null`;
        } else {
          const arr = v.map(m => {
            if (m === "self") {
              return "Mode(self:true)";
            }
            return generateMode(m);
          });
          code += `${k}: [${arr.join(",")}]`;
        }
        break;
      default:
        code += `${k}: ${JSON.stringify(v)}`;
    }

    if (i < arr.length - 1) {
      code += ",";
    }
  });
  code += ")";
  return code;
}

// common.dart
const modeKeys = Object.keys(hljs).filter(
  k => /^[A-Z]/.test(k) && !k.endsWith("_RE") && typeof hljs[k] !== "function"
);

let common = `import 'highlight.dart';`;
modeKeys.forEach(key => {
  common += `var ${key}=${generateMode(hljs[key], false)};`;
});
fs.writeFileSync(
  path.resolve(__dirname, `../highlight/lib/common.dart`),
  common.replace(/\$/g, "\\$")
);

function normalizeLanguageName(name) {
  if (/^\d/.test(name)) {
    name = "lang" + name;
  }
  return camelCase(name);
}

let all = "var all = {";

fs.readdirSync(dir).forEach(file => {
  const item = require(path.resolve(dir, file))(hljs);
  let originalLang = path.basename(file, path.extname(file));
  let lang = normalizeLanguageName(originalLang);

  try {
    const data = generateMode(item);

    fs.writeFileSync(
      path.resolve(
        __dirname,
        `../highlight/lib/languages/${originalLang}.dart`
      ),
      `import '../common.dart'; import '../highlight.dart'; var ${lang}=${data};`
        .replace(/"hljs\.(.*?)"/g, "$1")
        .replace(/\$/g, "\\$")
    );

    all = `import 'languages/${originalLang}.dart';` + all;
    all += `'${originalLang}': ${lang},`;
  } catch (err) {
    console.error(err);
  }
});

// all.dart
all += "};";
fs.writeFileSync(
  path.resolve(__dirname, `../highlight/lib/all.dart`),
  all.replace(/\$/g, "\\$")
);

// format
execSync(
  `dartfmt --overwrite ${path.resolve(__dirname, "../highlight/lib/**/*")}`
);

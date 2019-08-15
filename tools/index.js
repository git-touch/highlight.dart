import fs from "fs";
import path from "path";
import * as _ from "lodash-es";
import { execSync } from "child_process";
import hljs from "highlight.js";
import CircularJSON from "circular-json";

const dir = path.resolve(__dirname, "node_modules/highlight.js/lib/languages");

function generateMode(obj, matchCommonKey = true, commonSet = new Set()) {
  if (typeof obj === "string") {
    if (matchCommonKey) {
      for (const entry of modeEntries) {
        if (entry[0] === obj) {
          return entry[0];
        }
      }
    }

    if (obj === "self") {
      return "Mode(self:true)";
    }

    if (obj.startsWith("~")) {
      commonSet.add(obj);
      return obj.replace(/~/g, "_");
    }

    throw new Error("should not be here: " + obj);
  }

  if (obj == null) {
    return JSON.stringify(null);
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
        code += `${k}: ${generateMode(v, true, commonSet)}`;
        break;
      case "contains":
      case "variants":
        if (v == null) {
          code += `${k}: null`;
        } else {
          const arr = v.map(m => {
            return generateMode(m, true, commonSet);
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
const modeEntries = Object.entries(hljs).filter(
  ([k]) =>
    /^[A-Z]/.test(k) && !k.endsWith("_RE") && typeof hljs[k] !== "function"
);

let common = `import 'highlight.dart';`;
modeEntries.forEach(([k, v]) => {
  common += `Mode ${k}=${generateMode(v, false)};`;
});
fs.writeFileSync(
  path.resolve(__dirname, `../highlight/lib/common.dart`),
  common.replace(/\$/g, "\\$")
);

function normalizeLanguageName(name) {
  if (/^\d/.test(name)) {
    name = "lang" + name;
  }
  return _.camelCase(name);
}

let all = "var all = {";

// ["1c"]
fs.readdirSync(dir).forEach(file => {
  const langObj = require(path.resolve(dir, file))(hljs);
  let originalLang = path.basename(file, path.extname(file));
  let lang = normalizeLanguageName(originalLang);

  try {
    // Handle circular object
    const str = CircularJSON.stringify(langObj, (k, v) => {
      // console.log(v);
      // RegExp -> string
      if (v instanceof RegExp) {
        return v.source;
      }

      // hljs common mode -> string
      for (let entry of modeEntries) {
        if (entry[1] === v) {
          return entry[0];
        }
      }

      return v;
    });
    const nonCircularObj = JSON.parse(str);
    // console.log(str);
    const commonSet = new Set();
    const data = generateMode(nonCircularObj, true, commonSet);

    var commonStr = "";
    commonSet.forEach(commonKey => {
      // console.log(commonKey);

      // ~contains~0 -> lang.contains[0]
      let lodashGetKey = "";
      for (let item of commonKey.split("~").slice(1)) {
        if (item === "containts") item = "contains";
        if (isNaN(parseInt(item, 10))) {
          lodashGetKey += "." + item;
        } else {
          lodashGetKey += "[" + item + "]";
        }
      }

      lodashGetKey = lodashGetKey.slice(1);

      const data = generateMode(_.get(nonCircularObj, lodashGetKey), true);
      commonStr += `var ${commonKey.replace(/~/g, "_")} = ${data};`;
    });

    fs.writeFileSync(
      path.resolve(
        __dirname,
        `../highlight/lib/languages/${originalLang}.dart`
      ),
      `import '../common.dart'; import '../highlight.dart'; ${commonStr} Mode ${lang}=${data};`
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

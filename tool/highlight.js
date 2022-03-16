import fs from "fs";
import path from "path";
import _ from "lodash";
import hljs from "highlight.js/lib/highlight"; // TODO: Do not register languages
import CircularJSON from "circular-json";

const NOTICE_COMMENT = "// GENERATED CODE - DO NOT MODIFY BY HAND\n\n";

const dir = "node_modules/highlight.js/lib/languages";
hljs.registerLanguage("cpp", require(path.resolve(dir, "cpp"))); // exports

const modeEntries = Object.entries(hljs).filter(
  ([k]) =>
    /^[A-Z]/.test(k) && !k.endsWith("_RE") && typeof hljs[k] !== "function"
);

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
      return `Mode(ref: '${obj}')`;
    }

    throw new Error("should not be here: " + obj);
  }

  if (obj == null) {
    return JSON.stringify(null);
  }

  let code = "Mode(";
  Object.entries(obj).forEach(([k, v], i, arr) => {
    if (k === "exports") return; // CPP

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
        } else if (Array.isArray(v)) {
          const arr = v.map(m => {
            return generateMode(m, true, commonSet);
          });
          code += `${k}: [${arr.join(",")}]`;
        } else if (typeof v === "string") {
          return `Mode(ref: '${v}')`;
        } else {
          throw "should not be here";
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

/**
 * highlight/src/common_modes.dart
 */
export function commonModes() {
  let common = `${NOTICE_COMMENT}import 'mode.dart';`;
  modeEntries.forEach(([k, v]) => {
    common += `final ${k}=${generateMode(v, false)};`;
  });
  fs.writeFileSync(
    `../highlight/lib/src/common_modes.dart`,
    common.replace(/\$/g, "\\$")
  );
}

function normalizeLanguageName(name) {
  if (/^\d/.test(name)) {
    name = "lang" + name;
  }
  return _.camelCase(name);
}

export function allModes() {
  let all = "";
  let builtin = "final builtinLanguages = {";
  let community = "final communityLanguages = {";

  const dirs = fs.readdirSync(dir);
  const items = [
    ...dirs.map(file => ({
      name: path.basename(file, path.extname(file)),
      factory: require(path.resolve(dir, file)),
      community: false
    })),
    {
      name: "vue",
      factory: require("../vendor/highlightjs-vue/vue").definer,
      community: true
    },
    {
      name: "graphql",
      factory: require("../vendor/highlightjs-graphql").definer,
      community: true
    },
    {
      name: "gn",
      factory: require("../vendor/highlightjs-GN").definer,
      community: true
    },
    {
      name: "solidity",
      factory: require("../vendor/highlightjs-solidity").definer,
      community: true
    },
    {
      name: "terraform",
      factory: require("../vendor/highlightjs-terraform").definer,
      community: true
    }
  ];

  // ["json"]
  items.forEach(item => {
    let originalLang = item.name;
    let lang = normalizeLanguageName(originalLang);

    try {
      // Handle circular object
      const str = CircularJSON.stringify(item.factory(hljs), (k, v) => {
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

        if (k === "keywords" || Array.isArray(v)) {
          return _.clone(v);
        }

        return v;
      });
      const nonCircularObj = JSON.parse(str);
      // console.log(str);
      const commonSet = new Set();
      generateMode(nonCircularObj, true, commonSet);

      var commonStr = "refs: {";
      [...commonSet]
        .sort((a, b) => (a < b ? 1 : -1))
        .forEach(commonKey => {
          // console.log(commonKey);

          // ~contains~0 -> lang.contains[0]
          let lodashGetKey = "";
          for (let item of commonKey.split("~").slice(1)) {
            if (isNaN(parseInt(item, 10))) {
              lodashGetKey += "." + item;
            } else {
              lodashGetKey += "[" + item + "]";
            }
          }

          lodashGetKey = lodashGetKey.slice(1);

          const data = generateMode(_.get(nonCircularObj, lodashGetKey), true);
          commonStr += `'${commonKey}': ${data},`;

          // Set the first ref
          _.set(nonCircularObj, lodashGetKey, commonKey);
        });
      commonStr += "},";

      const data = generateMode(nonCircularObj, true);

      fs.writeFileSync(
        `../highlight/lib/languages/${originalLang}.dart`,
        `${NOTICE_COMMENT}import '../src/mode.dart'; import '../src/common_modes.dart'; final ${lang}=Mode(${commonStr} ${data.slice(
          5
        )};`
          .replace(/"hljs\.(.*?)"/g, "$1")
          .replace(/\$/g, "\\$")
      );

      all += `import '${originalLang}.dart';`;
      if (item.community) {
        community += `'${originalLang}': ${lang},`;
      } else {
        builtin += `'${originalLang}': ${lang},`;
      }
    } catch (err) {
      console.error(err);
    }
  });

  // all.dart
  builtin += "};";
  community += "};";
  all += community + builtin;
  all += "final allLanguages = {...builtinLanguages,...communityLanguages};";
  fs.writeFileSync(
    `../highlight/lib/languages/all.dart`,
    all.replace(/\$/g, "\\$")
  );
}

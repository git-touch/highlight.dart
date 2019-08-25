const fs = require("fs");
const path = require("path");
const { src, dest, watch, series } = require("gulp");
const { execSync } = require("child_process");
const through2 = require("through2");

async function writeCodeExamples() {
  // Generate code example dart files
  let code = "var exampleMap = {";
  // ["dart"]
  fs.readdirSync("../vendor/highlight.js/test/detect").forEach(langName => {
    if (langName.endsWith(".js")) return;

    const content = fs
      .readFileSync(
        path.resolve(
          "../vendor/highlight.js/test/detect",
          langName,
          "default.txt"
        ),
        "utf8"
      )
      .replace(/\\/g, "\\\\")
      .replace(/'/g, "\\'")
      .replace(/\$/g, "\\$")
      .replace(/\n/g, "\\n");
    code += `'${langName}':'${content}',`;
  });
  code += "};";
  fs.writeFileSync("../flutter_highlight_gallery/lib/example.dart", code);
  execSync("dartfmt --overwrite ../flutter_highlight_gallery/lib/example.dart");
}

function adaptForWeb() {
  return src("../flutter_highlight/lib/**/*")
    .pipe(
      through2.obj((file, _, cb) => {
        if (file.isBuffer()) {
          let str = file.contents
            .toString()
            .replace("package:flutter", "package:flutter_web");

          // Drop dart:io dependency
          if (file.path.endsWith("flutter_highlight.dart")) {
            str = str
              .split("\n")
              .filter(line => {
                return !line.includes("dart:io");
              })
              .map(line => line.replace(/Platform\.(\w*)/g, "false"))
              .join("\n");
          }

          file.contents = Buffer.from(str, "utf8");
        }
        cb(null, file);
      })
    )
    .pipe(dest("../flutter_highlight_gallery/lib/flutter_highlight"));
}

exports.watch = cb => {
  watch("../flutter_highlight/lib/**/*", { ignoreInitial: false }, adaptForWeb);
  watch(
    "../vendor/highlight.js/test/**/*",
    { ignoreInitial: false },
    writeCodeExamples
  );
  cb();
};

exports.default = cb => {
  adaptForWeb();
  writeCodeExamples();
  cb();
};

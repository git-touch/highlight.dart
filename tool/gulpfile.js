const fs = require("fs");
const path = require("path");
const { src, dest, watch } = require("gulp");
const { execSync } = require("child_process");
const through2 = require("through2");

const HLJS_VERSION = "9.15.10";

async function cloneRepo() {
  execSync("rm -rf /tmp/highlight.js");
  execSync(
    `git clone --branch ${HLJS_VERSION} --depth 1 https://github.com/highlightjs/highlight.js.git /tmp/highlight.js`
  );
}

exports.copyTestFiles = () => {
  return src("/tmp/highlight.js/test/{detect,markup}/**/*")
    .pipe(
      through2.obj((file, _, cb) => {
        cb(null, file.path.endsWith(".js") ? null : file);
      })
    )
    .pipe(dest(path.resolve(__dirname, "../highlight/test")));
};

async function writeCodeExamples() {
  // Generate code example dart files
  let code = "var exampleMap = {";
  // ["dart"]
  fs.readdirSync("../highlight/test/detect").forEach(langName => {
    const content = fs
      .readFileSync(
        path.resolve("../highlight/test/detect", langName, "default.txt"),
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
          file.contents = Buffer.from(
            file.contents
              .toString()
              .replace("package:flutter", "package:flutter_web"),
            "utf8"
          );
        }
        cb(null, file);
      })
    )
    .pipe(dest("../flutter_highlight_gallery/lib"));
}

exports.default = () => {
  watch("../flutter_highlight/lib/**/*", { ignoreInitial: false }, adaptForWeb);

  writeCodeExamples();
};

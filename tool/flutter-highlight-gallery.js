import fs from "fs";
import path from "path";
import gulp from "gulp";
import through2 from "through2";

export function example() {
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
  fs.writeFileSync(
    "../flutter_highlight_gallery/lib/generated/example_map.dart",
    code
  );
}

export function highlight() {
  return gulp
    .src("../flutter_highlight/lib/**/*")
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
              .filter(line => !line.includes("dart:io"))
              .map(line => line.replace("Platform.operatingSystem", "''"))
              .join("\n");
          }

          file.contents = Buffer.from(str, "utf8");
        }
        cb(null, file);
      })
    )
    .pipe(gulp.dest("../flutter_highlight_gallery/lib/generated"));
}

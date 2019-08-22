const path = require("path");
const { execSync } = require("child_process");
const map = require("map-stream");
const vfs = require("vinyl-fs");

// Copy highlight test files
execSync("rm -rf /tmp/highlight.js");
execSync(
  "git clone --branch 9.15.10 --depth 1 https://github.com/highlightjs/highlight.js.git /tmp/highlight.js"
);

vfs
  .src("/tmp/highlight.js/test/{detect,markup}/**/*")
  .pipe(
    map((file, cb) => {
      if (file.path.endsWith(".js")) {
        cb(null);
      } else {
        cb(null, file);
      }
    })
  )
  .pipe(vfs.dest(path.resolve(__dirname, "../highlight/test")));

/**
 * Copy flutter_highlight files to gallery
 * Replace `flutter` with `flutter_web`
 */
vfs
  .src([path.resolve(__dirname, "../flutter_highlight/lib/**/*")])
  .pipe(
    map((file, cb) => {
      if (file.contents instanceof Buffer) {
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
  .pipe(vfs.dest(path.resolve(__dirname, "../flutter_highlight_gallery/lib")));

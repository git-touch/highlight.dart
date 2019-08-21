const path = require("path");
const map = require("map-stream");
const vfs = require("vinyl-fs");

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

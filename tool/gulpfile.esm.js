import gulp from "gulp";
import * as h from "./highlight";
import * as fh from "./flutter-highlight";
import * as gallery from "./flutter-highlight-gallery";

export function watch(cb) {
  gulp.watch(
    "../flutter_highlight/lib/**/*",
    { ignoreInitial: false },
    gallery.highlight
  );
  gulp.watch(
    "../vendor/highlight.js/test/**/*",
    { ignoreInitial: false },
    gallery.example
  );
  gulp.watch(
    "../vendor/highlight.js/src/styles/**/*",
    { ignoreInitial: false },
    fh.style
  );
  cb();
}

export default cb => {
  h.allModes();
  h.commonModes();
  gallery.highlight();
  gallery.example();
  fh.style();
  cb();
};

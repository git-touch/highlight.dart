import gulp from "gulp";
import * as gallery from "./gallery";
import * as fh from "./flutter-highlight";

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
  gallery.highlight();
  gallery.example();
  fh.style();
  cb();
};

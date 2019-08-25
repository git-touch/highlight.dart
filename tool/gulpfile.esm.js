import gulp from "gulp";
import * as gallery from "./gallery";

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
  cb();
}

export default cb => {
  gallery.highlight();
  gallery.example();
  cb();
};

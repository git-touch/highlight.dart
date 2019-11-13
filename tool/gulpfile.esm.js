import { execSync } from "child_process";
import gulp from "gulp";
import * as h from "./highlight";
import * as fh from "./flutter-highlight";
import * as gallery from "./gallery";

export function watch(cb) {
  gulp.watch("../flutter_highlight/lib/**/*", { ignoreInitial: false });
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
  gallery.example();
  fh.style();

  // FIXME: use common used bash
  try {
    execSync(`dartfmt --overwrite ../**/*.dart`, { shell: "/bin/zsh" });
  } catch (err) {
    // CI env has no zsh, ignore error here
    console.log(err);
  }
  cb();
};

import fs from "fs";
import path from "path";

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

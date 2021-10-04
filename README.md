# highlight.dart

Syntax highlighting for Dart and Flutter, which supports lots of languages and themes.

[View gallery built with Flutter web](https://git-touch.github.io/highlight/)

| Package | Version | Description |
| --- | --- | --- |
| [highlight](https://github.com/pd4d10/highlight/tree/master/highlight) | [![pub](https://img.shields.io/pub/v/highlight)](https://pub.dev/packages/highlight) | Core syntax highlighting library written in Dart |
| [flutter_highlight](https://github.com/pd4d10/highlight/tree/master/flutter_highlight) | [![pub](https://img.shields.io/pub/v/flutter_highlight)](https://pub.dev/packages/flutter_highlight) | Flutter syntax highlighting widget |
|  |

## References

- [All available languages](https://github.com/pd4d10/highlight/tree/master/highlight/lib/languages)
- [All available themes](https://github.com/pd4d10/highlight/blob/master/flutter_highlight/lib/themes)

## How to add unsupported language

1. Install nodejs and gulp.  
Highlight.dart uses [nodejs](https://nodejs.org/en/) and [gulp](https://gulpjs.com/) from command line to generate language syntax definition files, so please install nodejs and gulp-cli.

2. make sure your language is [supported by highlight.js](https://github.com/highlightjs/highlight.js/blob/main/SUPPORTED_LANGUAGES.md).
3. add your supported language repository as git submodule under `vendor` folder  
  **Note:** if the `main` key's value of `pacakge.json` in your language repository does not exists, please correct it(and then create a PR to the repository) or the syntax definition file won't be generated.
4. edit `tool/highlight.js` function allModes`:
for exmaple, given I'm trying to add support for GDScript:
```javascript
export function allModes(){
...
  const items = [
    ...dirs.map(file => ({
      name: path.basename(file, path.extname(file)),
      factory: require(path.resolve(dir, file)),
      community: false
    })),
    {
      name: "vue",
      factory: require("../vendor/highlightjs-vue/vue").definer,
      community: true
    },
    {
      name: "graphql",
      factory: require("../vendor/highlightjs-graphql").definer,
      community: true
    },
    {
      name: "gn",
      factory: require("../vendor/highlightjs-GN").definer,
      community: true
    },
    {
      name: "solidity",
      factory: require("../vendor/highlightjs-solidity").definer,
      community: true
    }, // <- don't forget the comma!
    /* Below are appended lines*/
    {
      name: "gdscript",
      factory: require("../vendor/highlightjs-gdscript").definer,
      community: true
    }
    /* append end */
  ];
  ...
```
5. change your working directory to `tool` and run gulp in command line, and then use `dart format [your directory]` command to format generated dart files.

## License

MIT

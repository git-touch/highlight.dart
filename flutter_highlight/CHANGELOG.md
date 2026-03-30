# Changelog

## 0.7.1 - 2026-03-30

_Generated from `v0.7.0..HEAD`._

### Refactors

- migrate highlight.dart to a Dart workspace monorepo (`f444b83`)

### Maintenance

- update workspace dependency constraints (`331c468`)
- enforce formatting and generated code sync (`d9b59f4`)
- regenerate generated highlight sources (`76f7043`)

## 0.7.0 - 2021-03-07

_Generated from `v0.6.0..v0.7.0`._

### Features

- null safety (`fd0860f`)

### Documentation

- Fix Demo links (#8) (`251505a`)

## 0.6.0 - 2020-02-04

_Generated from `v0.5.0..v0.6.0`._

### Maintenance

- update url_launcher for web (`abf9d81`)
- run codegen (`ef5ef32`)
- specify tab size (`1aabcce`)

## 0.5.0 - 2019-11-14

_Generated from `v0.4.0..v0.5.0`._

### Features

- add highlight core module for more control (`c2bee79`)

### Fixes

- update path (`9cfeb1a`)
- richtext (`036f5a9`)

### Refactors

- move gallery to example (`fdce8fa`)
- commit generated files (`4590cc3`)
- using url_launcher instead of html lib (`0b0a41b`)

### Documentation

- update docs (`a740731`)

### Maintenance

- generate code (`8e87f9c`)
- commit generated ios files (`b55f5d6`)

## 0.4.0 - 2019-09-20

_Generated from `v0.3.0..v0.4.0`._

### Features

- auto detection param (`de22fa4`)

### Fixes

- drop dart:io dependency for web (`3aa0155`)

### Refactors

- monospace fonts (`2fbdc7e`)

### Documentation

- update examples and readme (`ef80504`)

### Maintenance

- uncomment overrides (`785539d`)

## 0.3.0 - 2019-09-02

_Generated from `c52fdb2..v0.3.0`._

### Refactors

- rename to HighlightView to avoid confusion (`f629a87`)
- exports singleton (`f183fa7`)

## 0.2.1 - 2019-08-26

_Generated from `v0.2.0..c52fdb2`._

### Fixes

- remove deprecated theme (`2e492b6`)
- background color with image (`0a2d780`)

### Refactors

- container -> root (`5b8c758`)

### Maintenance

- drop nested selector (too many bad cases) (`a1cbbe1`)
- fix color conversion (`2f3a614`)

## 0.2.0 - 2019-08-26

_Generated from repository start to `v0.2.0`._

### Features

- add tools (`2ca2e95`)
- compile mode (`2811fbb`)
- core highlight (`3f8ca78`)
- add highlighter widget (`6f8b529`)
- add generated style files (`4da9ce8`)
- register all languages by default (`33299d3`)
- select highlight theme at gallery (`063c06c`)
- add container background color (`7edd5aa`)
- use default theme (`505aa11`)
- default style (`2d1e72f`)
- add padding and textStyle props (`d4ed23d`)

### Fixes

- flutter highlight traverse (`6ae2549`)
- merge styles of same selector (`b678d03`)
- drop dart:io dependency at platform web (`05963ef`)
- rename folder following pub (`510d607`)

### Refactors

- highlight -> parse (`319fe7e`)
- style -> theme (`26f6c57`)

### Documentation

- update examples and readme (`3d3474d`)
- improve documentation (`7d22a5f`)
- add gallery link to docs (`d448220`)

### Maintenance

- rename to highlight as common library (`2592b4c`)
- flutter create (`aae2b42`)
- dart sdk version, remove unused deps (`09f7d59`)
- add prefix comment for generated files (`f69e71e`)
- generate styles (`1d111a7`)
- rename styles folder to themes (`6a932d2`)

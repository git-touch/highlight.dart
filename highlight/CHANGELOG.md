# Changelog

## 0.7.1 - 2026-03-30

_Generated from `v0.7.0..HEAD`._

### Refactors

- migrate highlight.dart to a Dart workspace monorepo (`f444b83`)

### Maintenance

- update workspace dependency constraints (`331c468`)
- regenerate generated highlight sources (`76f7043`)
- align vendored fixtures and CI with upstream stable (`b12bc1c`)

## 0.7.0 - 2021-03-07

_Generated from `v0.6.0..v0.7.0`._

### Features

- null safety (`fd0860f`)

## 0.6.0 - 2020-02-04

_Generated from `bc74f4d..v0.6.0`._

### Fixes

- pedantic lints (`37b4469`)

### Maintenance

- run codegen (`ef5ef32`)
- code gen (`e17a077`)

## 0.5.0 - 2019-11-14

_Generated from `v0.4.1..bc74f4d`._

### Features

- add gn and solidity (`196c1c4`)

### Refactors

- remove unused param (`081c668`)
- var -> final (`d0e1aec`)
- add register all method (`75753dc`)
- builtin and community languages (`49418b1`)

### Maintenance

- generate code (`8e87f9c`)
- fix language detection (`ef6fc86`)

## 0.4.1 - 2019-11-12

_Generated from `9a1123a..v0.4.1`._

### Features

- add graphql and vue (`5f558bf`)
- add highlight core module for more control (`c2bee79`)

## 0.4.0 - 2019-09-20

_Generated from `7f55bfe..9a1123a`._

### Features

- auto detection param (`de22fa4`)

### Fixes

- use plaintext mode if no language match (`3c8bb95`)

### Documentation

- update examples and readme (`ef80504`)

### Maintenance

- fix auto detection cases (`8de9a3e`)
- add test cases (`54d53c3`)

## 0.3.0 - 2019-09-02

_Generated from `ab848b6..7f55bfe`._

### Refactors

- exports singleton (`f183fa7`)

## 0.2.0 - 2019-08-26

_Generated from `4960805..ab848b6`._

### Documentation

- improve doc of highlight lib (`995b285`)

### Maintenance

- ignore example, run generate script (`23a5adb`)

## 0.1.0 - 2019-08-25

_Generated from repository start to `4960805`._

### Features

- support sub languages (`a4c419b`)
- add refs to fix circular issue (`4470f4a`)
- output tree node instead of html string (`64376d7`)
- change exposed api (`11b8c9c`)
- register all languages by default (`33299d3`)

### Fixes

- trim result before comparing (`f7d9680`)
- sub language field type (`24c8dc1`)
- regexp with multiline flag (`f2f2ff7`)
- normalize types (`74cd977`)
- regexp with multiline flag (`e9f2a81`)
- terminators filter (`2bdfc37`)
- match sub language (`7b0e509`)
- catch int parse error (`41aac3d`)
- keyword match reference language (`4ec6476`)
- className empty (`b16005e`)
- join regexp (`28a4e32`)
- languages alias (`1a88ff6`)
- stack overflow, update test cases (`1117023`)
- alias register (`bfc594e`)

### Refactors

- generate class instead of map (`acf504a`)
- drop unnecessary regexp to string conversion (`400acef`)
- private methods (`00fc7bb`)
- move private things to src (`942c88f`)
- highlight -> parse (`319fe7e`)

### Documentation

- update examples and readme (`b4e7b3e`)
- update readme (`86c6500`)

### Maintenance

- rename to highlight as common library (`2592b4c`)
- add hljs test cases (`fb6c9ba`)
- add missing langs (`d5dd81a`)
- generate multiple files by language (`12f47bb`)
- drop json related code (`b16ec4b`)
- add hljs v9.15.9 test cases (`3a509b9`)
- move all generated files to languages folder (`f31ee95`)
- add generated language files (`7421fb8`)
- remove unused index.js (`58766ae`)
- add detect test files (`abd5b8a`)
- language detect (`19544a8`)
- update language and test files (`882870f`)
- remove unused deps, downgrade minimal version of path for flutter compatible (`8ad23ce`)
- update test cases (`1665492`)
- add test files copy script (`103ca48`)
- dart sdk version, remove unused deps (`09f7d59`)
- use fixtures in submodule repo (`5932818`)
- remove unused fixtures (`a368be8`)
- add prefix comment for generated files (`f69e71e`)

### Other

- Revert "fix: regexp with multiline flag" (`927997c`)

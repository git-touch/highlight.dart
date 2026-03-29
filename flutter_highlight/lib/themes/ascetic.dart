import 'package:highlight/highlight_core.dart' show HljsStyle;

const asceticTheme = <String, HljsStyle>{
  'root': const HljsStyle(color: '#000000', backgroundColor: '#ffffff'),
  'addition': const HljsStyle(color: '#888888'),
  'attribute': const HljsStyle(color: '#888888'),
  'bullet': const HljsStyle(color: '#888888'),
  'comment': const HljsStyle(color: '#cccccc'),
  'deletion': const HljsStyle(color: '#cccccc'),
  'emphasis': const HljsStyle(italic: true),
  'keyword': const HljsStyle(bold: true),
  'link': const HljsStyle(color: '#888888'),
  'meta': const HljsStyle(color: '#cccccc'),
  'name': const HljsStyle(bold: true),
  'quote': const HljsStyle(color: '#cccccc'),
  'section': const HljsStyle(color: '#888888', bold: true),
  'selector-tag': const HljsStyle(bold: true),
  'string': const HljsStyle(color: '#888888'),
  'strong': const HljsStyle(bold: true),
  'symbol': const HljsStyle(color: '#888888'),
  'template-variable': const HljsStyle(color: '#888888'),
  'type': const HljsStyle(bold: true),
  'variable': const HljsStyle(color: '#888888'),
};

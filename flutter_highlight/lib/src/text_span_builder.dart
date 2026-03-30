import 'package:flutter/painting.dart';
import 'package:highlight/highlight_core.dart' show DataNode;

import 'theme_map.dart';

/// Converts a `DataNode` token tree (produced by the highlight core engine)
/// into a Flutter [TextSpan] tree for native rendering.
class TextSpanBuilder {
  final ThemeMap themeMap;
  final TextStyle baseStyle;

  const TextSpanBuilder({required this.themeMap, required this.baseStyle});

  /// Build a [TextSpan] from the root `DataNode`.
  ///
  /// The returned span has [baseStyle] merged with the theme's root style,
  /// and recursively-built children matching the scope tree.
  TextSpan build(DataNode root) {
    return TextSpan(
      style: baseStyle.merge(themeMap.rootStyle),
      children: _buildChildren(root),
    );
  }

  List<InlineSpan> _buildChildren(DataNode node) {
    final spans = <InlineSpan>[];
    for (final child in node.children) {
      if (child is String) {
        spans.add(TextSpan(text: child));
      } else if (child is DataNode) {
        final style = child.scope != null
            ? themeMap.resolve(child.scope!)
            : null;
        if (child.children.length == 1 && child.children.first is String) {
          spans.add(
            TextSpan(text: child.children.first as String, style: style),
          );
        } else {
          spans.add(TextSpan(style: style, children: _buildChildren(child)));
        }
      }
    }
    return spans;
  }
}

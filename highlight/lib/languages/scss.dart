// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `scss`.
Mode scss(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  final Mode mode9 = Mode();
  mode0.scope = r'comment';
  mode0.begin = r'/\*';
  mode0.end = r'\*/';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'number';
  mode3.begin =
      r'\b\d+(\.\d+)?(%|em|ex|ch|rem|vw|vh|vmin|vmax|cm|mm|in|pt|pc|px|deg|grad|rad|turn|s|ms|Hz|kHz|dpi|dpcm|dppx)?';
  mode3.relevance = 0;
  mode4.scope = r'string';
  mode4.begin = r"'";
  mode4.end = r"'";
  mode4.illegal = r'\n';
  mode4.contains = [mode5];
  mode5.begin = r'\\[\s\S]';
  mode5.relevance = 0;
  mode6.scope = r'string';
  mode6.begin = r'"';
  mode6.end = r'"';
  mode6.illegal = r'\n';
  mode6.contains = [mode5];
  mode7.scope = r'variable';
  mode7.begin = r'(\$[a-zA-Z-][a-zA-Z0-9_-]*)\b';
  mode7.relevance = 0;
  mode8.scope = r'number';
  mode8.begin = r'#(([0-9a-fA-F]{3,4})|(([0-9a-fA-F]{2}){3,4}))\b';
  mode9.scope = r'built_in';
  mode9.begin = r'[\w-]+(?=\()';
  return Mode(
    name: r'SCSS',
    caseInsensitive: true,
    illegal: r"[=/|']",
    contains: [
      Mode(
        scope: r'comment',
        begin: r'//',
        end: r'$',
        contains: [
          Mode(
            scope: r'doctag',
            begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
            end: r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):',
            excludeBegin: true,
            relevance: 0,
          ),
          Mode(
            begin:
                r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
          ),
        ],
      ),
      mode0,
      mode3,
      Mode(scope: r'selector-id', begin: r'#[A-Za-z0-9_-]+', relevance: 0),
      Mode(scope: r'selector-class', begin: r'\.[A-Za-z0-9_-]+', relevance: 0),
      Mode(
        scope: r'selector-attr',
        begin: r'\[',
        end: r'\]',
        illegal: r'$',
        contains: [mode4, mode6],
      ),
      Mode(
        scope: r'selector-tag',
        begin:
            r'\b(a|abbr|address|article|aside|audio|b|blockquote|body|button|canvas|caption|cite|code|dd|del|details|dfn|div|dl|dt|em|fieldset|figcaption|figure|footer|form|h1|h2|h3|h4|h5|h6|header|hgroup|html|i|iframe|img|input|ins|kbd|label|legend|li|main|mark|menu|nav|object|ol|optgroup|option|p|picture|q|quote|samp|section|select|source|span|strong|summary|sup|table|tbody|td|textarea|tfoot|th|thead|time|tr|ul|var|video|defs|g|marker|mask|pattern|svg|switch|symbol|feBlend|feColorMatrix|feComponentTransfer|feComposite|feConvolveMatrix|feDiffuseLighting|feDisplacementMap|feFlood|feGaussianBlur|feImage|feMerge|feMorphology|feOffset|feSpecularLighting|feTile|feTurbulence|linearGradient|radialGradient|stop|circle|ellipse|image|line|path|polygon|polyline|rect|text|use|textPath|tspan|foreignObject|clipPath)\b',
        relevance: 0,
      ),
      Mode(
        scope: r'selector-pseudo',
        begin:
            r':(where|visited|valid|user-invalid|target-within|target|scope|root|right|required|read-write|read-only|placeholder-shown|past|out-of-range|optional|only-of-type|only-child|nth-of-type|nth-last-of-type|nth-last-col|nth-last-child|nth-col|nth-child|not|local-link|link|left|last-of-type|last-child|lang|is|invalid|indeterminate|in-range|hover|host-context|host|has|future|fullscreen|focus-within|focus-visible|focus|first-of-type|first-child|first|enabled|empty|drop|disabled|dir|defined|default|current|checked|blank|any-link|active)',
      ),
      Mode(
        scope: r'selector-pseudo',
        begin:
            r':(:)?(spelling-error|slotted|selection|placeholder|part|marker|grammar-error|first-line|first-letter|cue-region|cue|before|backdrop|after)',
      ),
      mode7,
      Mode(begin: r'\(', end: r'\)', contains: [mode3]),
      Mode(scope: r'attr', begin: r'--[A-Za-z_][A-Za-z0-9_-]*'),
      Mode(
        scope: r'attribute',
        begin:
            r'\b(zoom|z-index|y|x|writing-mode|word-wrap|word-spacing|word-break|will-change|width|widows|white-space-collapse|white-space|voice-volume|voice-stress|voice-rate|voice-range|voice-pitch|voice-family|voice-duration|voice-balance|visibility|view-transition-name|view-timeline-name|view-timeline-inset|view-timeline-axis|view-timeline|vertical-align|vector-effect|user-select|user-modify|unicode-bidi|translate|transition-timing-function|transition-property|transition-duration|transition-delay|transition-behavior|transition|transform-style|transform-origin|transform-box|transform|touch-action|top|timeline-scope|text-wrap-style|text-wrap-mode|text-wrap|text-underline-position|text-underline-offset|text-transform|text-size-adjust|text-shadow|text-rendering|text-overflow|text-orientation|text-justify|text-indent|text-emphasis-style|text-emphasis-position|text-emphasis-color|text-emphasis|text-decoration-thickness|text-decoration-style|text-decoration-skip-ink|text-decoration-skip|text-decoration-line|text-decoration-color|text-decoration|text-combine-upright|text-anchor|text-align-last|text-align-all|text-align|table-layout|tab-size|stroke-width|stroke-opacity|stroke-miterlimit|stroke-linejoin|stroke-linecap|stroke-dashoffset|stroke-dasharray|stroke|stop-opacity|stop-color|src|speak-as|speak|shape-rendering|shape-outside|shape-margin|shape-image-threshold|scrollbar-width|scrollbar-gutter|scrollbar-color|scroll-timeline-name|scroll-timeline-axis|scroll-timeline|scroll-snap-type|scroll-snap-stop|scroll-snap-align|scroll-padding-top|scroll-padding-right|scroll-padding-left|scroll-padding-inline-start|scroll-padding-inline-end|scroll-padding-inline|scroll-padding-bottom|scroll-padding-block-start|scroll-padding-block-end|scroll-padding-block|scroll-padding|scroll-margin-top|scroll-margin-right|scroll-margin-left|scroll-margin-inline-start|scroll-margin-inline-end|scroll-margin-inline|scroll-margin-bottom|scroll-margin-block-start|scroll-margin-block-end|scroll-margin-block|scroll-margin|scroll-behavior|scale|ruby-position|ruby-align|row-gap|rotate|right|rest-before|rest-after|rest|resize|r|quotes|print-color-adjust|position-visibility|position-anchor|position|pointer-events|place-self|place-items|place-content|perspective-origin|perspective|pause-before|pause-after|pause|paint-order|page-break-inside|page-break-before|page-break-after|page|padding-top|padding-right|padding-left|padding-inline-start|padding-inline-end|padding-inline|padding-bottom|padding-block-start|padding-block-end|padding-block|padding|overscroll-behavior-y|overscroll-behavior-x|overscroll-behavior-inline|overscroll-behavior-block|overscroll-behavior|overlay|overflow-y|overflow-x|overflow-wrap|overflow-inline|overflow-clip-margin|overflow-block|overflow-anchor|overflow|outline-width|outline-style|outline-offset|outline-color|outline|orphans|order|opacity|offset-rotate|offset-position|offset-path|offset-distance|offset-anchor|offset|object-position|object-fit|normal|none|nav-up|nav-right|nav-left|nav-index|nav-down|mix-blend-mode|min-width|min-inline-size|min-height|min-block-size|max-width|max-inline-size|max-height|max-block-size|math-style|math-shift|math-depth|masonry-auto-flow|mask-type|mask-size|mask-repeat|mask-position|mask-origin|mask-mode|mask-image|mask-composite|mask-clip|mask-border-width|mask-border-source|mask-border-slice|mask-border-repeat|mask-border-outset|mask-border-mode|mask-border|mask|marks|marker-start|marker-mid|marker-end|marker|margin-trim|margin-top|margin-right|margin-left|margin-inline-start|margin-inline-end|margin-inline|margin-bottom|margin-block-start|margin-block-end|margin-block|margin|list-style-type|list-style-position|list-style-image|list-style|line-height-step|line-height|line-break|lighting-color|letter-spacing|left|kerning|justify-self|justify-items|justify-content|isolation|inset-inline-start|inset-inline-end|inset-inline|inset-block-start|inset-block-end|inset-block|inset-area|inset|inline-size|initial-letter-align|initial-letter|ime-mode|image-resolution|image-rendering|image-orientation|icon|hyphens|hyphenate-limit-chars|hyphenate-character|height|hanging-punctuation|grid-template-rows|grid-template-columns|grid-template-areas|grid-template|grid-row-start|grid-row-end|grid-row|grid-gap|grid-column-start|grid-column-end|grid-column|grid-auto-rows|grid-auto-flow|grid-auto-columns|grid-area|grid|glyph-orientation-vertical|glyph-orientation-horizontal|gap|forced-color-adjust|font-weight|font-variation-settings|font-variant-position|font-variant-numeric|font-variant-ligatures|font-variant-emoji|font-variant-east-asian|font-variant-caps|font-variant-alternates|font-variant|font-synthesis-weight|font-synthesis-style|font-synthesis-small-caps|font-synthesis-position|font-synthesis|font-style|font-stretch|font-smoothing|font-smooth|font-size-adjust|font-size|font-palette|font-optical-sizing|font-language-override|font-kerning|font-feature-settings|font-family|font-display|font|flow|flood-opacity|flood-color|float|flex-wrap|flex-shrink|flex-grow|flex-flow|flex-direction|flex-basis|flex|filter|fill-rule|fill-opacity|fill|field-sizing|enable-background|empty-cells|dominant-baseline|display|direction|cy|cx|cursor|cue-before|cue-after|cue|counter-set|counter-reset|counter-increment|content-visibility|content|container-type|container-name|container|contain-intrinsic-width|contain-intrinsic-size|contain-intrinsic-inline-size|contain-intrinsic-height|contain-intrinsic-block-size|contain|columns|column-width|column-span|column-rule-width|column-rule-style|column-rule-color|column-rule|column-gap|column-fill|column-count|color-scheme|color-rendering|color-profile|color-interpolation-filters|color-interpolation|color|clip-rule|clip-path|clip|clear|caret-color|caption-side|break-inside|break-before|break-after|box-sizing|box-shadow|box-pack|box-orient|box-ordinal-group|box-lines|box-flex-group|box-flex|box-direction|box-decoration-break|box-align|bottom|border-width|border-top-width|border-top-style|border-top-right-radius|border-top-left-radius|border-top-color|border-top|border-style|border-start-start-radius|border-start-end-radius|border-spacing|border-right-width|border-right-style|border-right-color|border-right|border-radius|border-left-width|border-left-style|border-left-color|border-left|border-inline-width|border-inline-style|border-inline-start-width|border-inline-start-style|border-inline-start-color|border-inline-start|border-inline-end-width|border-inline-end-style|border-inline-end-color|border-inline-end|border-inline-color|border-inline|border-image-width|border-image-source|border-image-slice|border-image-repeat|border-image-outset|border-image|border-end-start-radius|border-end-end-radius|border-color|border-collapse|border-bottom-width|border-bottom-style|border-bottom-right-radius|border-bottom-left-radius|border-bottom-color|border-bottom|border-block-width|border-block-style|border-block-start-width|border-block-start-style|border-block-start-color|border-block-start|border-block-end-width|border-block-end-style|border-block-end-color|border-block-end|border-block-color|border-block|border|block-size|baseline-shift|background-size|background-repeat|background-position-y|background-position-x|background-position|background-origin|background-image|background-color|background-clip|background-blend-mode|background-attachment|background|backface-visibility|backdrop-filter|aspect-ratio|appearance|animation-timing-function|animation-timeline|animation-range-start|animation-range-end|animation-range|animation-play-state|animation-name|animation-iteration-count|animation-fill-mode|animation-duration|animation-direction|animation-delay|animation-composition|animation|anchor-name|all|alignment-baseline|align-self|align-items|align-content|accent-color)\b',
      ),
      Mode(
        begin:
            r'\b(whitespace|wait|w-resize|visible|vertical-text|vertical-ideographic|uppercase|upper-roman|upper-alpha|underline|transparent|top|thin|thick|text|text-top|text-bottom|tb-rl|table-header-group|table-footer-group|sw-resize|super|strict|static|square|solid|small-caps|separate|se-resize|scroll|s-resize|rtl|row-resize|ridge|right|repeat|repeat-y|repeat-x|relative|progress|pointer|overline|outside|outset|oblique|nowrap|not-allowed|normal|none|nw-resize|no-repeat|no-drop|newspaper|ne-resize|n-resize|move|middle|medium|ltr|lr-tb|lowercase|lower-roman|lower-alpha|loose|list-item|line|line-through|line-edge|lighter|left|keep-all|justify|italic|inter-word|inter-ideograph|inside|inset|inline|inline-block|inherit|inactive|ideograph-space|ideograph-parenthesis|ideograph-numeric|ideograph-alpha|horizontal|hidden|help|hand|groove|fixed|ellipsis|e-resize|double|dotted|distribute|distribute-space|distribute-letter|distribute-all-lines|disc|disabled|default|decimal|dashed|crosshair|collapse|col-resize|circle|char|center|capitalize|break-word|break-all|bottom|both|bolder|bold|block|bidi-override|below|baseline|auto|always|all-scroll|absolute|table|table-cell)\b',
      ),
      Mode(
        begin: r':',
        end: r'[;}{]',
        relevance: 0,
        contains: [
          mode0,
          mode7,
          mode8,
          mode3,
          mode6,
          mode4,
          Mode(scope: r'meta', begin: r'!important'),
          mode9,
        ],
      ),
      Mode(
        begin: r'@(page|font-face)',
        keywords: {r'$pattern': r'@[a-z-]+', r'keyword': r'@page @font-face'},
      ),
      Mode(
        begin: r'@',
        end: r'[{;]',
        returnBegin: true,
        keywords: {
          r'$pattern': r'[a-z-]+',
          r'keyword': r'and or not only',
          r'attribute':
              r'width update scripting scan resolution prefers-reduced-transparency prefers-reduced-motion prefers-contrast prefers-color-scheme pointer overflow-inline overflow-block orientation monochrome min-width min-height max-width max-height inverted-colors hover height grid forced-colors display-mode device-width device-height device-aspect-ratio color-index color-gamut color aspect-ratio any-pointer any-hover',
        },
        contains: [
          Mode(begin: r'@[a-z-]+', scope: r'keyword'),
          Mode(begin: r'[a-z-]+(?=:)', scope: r'attribute'),
          mode7,
          mode6,
          mode4,
          mode8,
          mode3,
        ],
      ),
      mode9,
    ],
  );
}

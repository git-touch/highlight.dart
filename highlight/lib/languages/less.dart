// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode less(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  final Mode _mode15 = Mode();
  final Mode _mode16 = Mode();
  final Mode _mode17 = Mode();
  final Mode _mode18 = Mode();
  final Mode _mode19 = Mode();
  final Mode _mode20 = Mode();
  final Mode _mode21 = Mode();
  final Mode _mode22 = Mode();
  final Mode _mode23 = Mode();
  final Mode _mode24 = Mode();
  final Mode _mode25 = Mode();
  final Mode _mode26 = Mode();
  final Mode _mode27 = Mode();
  final Mode _mode28 = Mode();
  final Mode _mode29 = Mode();
  final Mode _mode30 = Mode();
  final Mode _mode31 = Mode();
  final Mode _mode32 = Mode();
  final Mode _mode33 = Mode();
  final Mode _mode34 = Mode();
  final Mode _mode35 = Mode();
  final Mode _mode36 = Mode();
  final Mode _mode37 = Mode();
  final Mode _mode38 = Mode();
  final Mode _mode39 = Mode();
  final Mode _mode40 = Mode();
  final Mode _mode41 = Mode();
  final Mode _mode42 = Mode();
  final Mode _mode43 = Mode();
  final Mode _mode44 = Mode();
  final Mode _mode45 = Mode();
  final Mode _mode46 = Mode();
  final Mode _mode47 = Mode();
  final Mode _mode48 = Mode();
  final Mode _mode49 = Mode();
  final Mode _mode50 = Mode();
  final Mode _mode51 = Mode();
  final Mode _mode52 = Mode();
  _mode0.scope = r'comment';
  _mode0.begin = r'//';
  _mode0.end = r'$';
  _mode0.contains = [_mode1, _mode2];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'comment';
  _mode3.begin = r'/\*';
  _mode3.end = r'\*/';
  _mode3.contains = [_mode4, _mode5];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.scope = r'keyword';
  _mode6.begin =
      r'@(import|media|charset|font-face|(-[a-z]+-)?keyframes|supports|document|namespace|page|viewport|host)\b';
  _mode6.starts = _mode7;
  _mode7.end = r'[;{}]';
  _mode7.keywords = {
    r'$pattern': r'[a-z-]+',
    r'keyword': r'and or not only',
    r'attribute':
        r'width update scripting scan resolution prefers-reduced-transparency prefers-reduced-motion prefers-contrast prefers-color-scheme pointer overflow-inline overflow-block orientation monochrome min-width min-height max-width max-height inverted-colors hover height grid forced-colors display-mode device-width device-height device-aspect-ratio color-index color-gamut color aspect-ratio any-pointer any-hover',
  };
  _mode7.returnEnd = true;
  _mode7.contains = [
    _mode0,
    _mode3,
    _mode8,
    _mode9,
    _mode10,
    _mode11,
    _mode13,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode21,
  ];
  _mode7.relevance = 0;
  _mode8.scope = r'string';
  _mode8.begin = r"~?'.*?'";
  _mode9.scope = r'string';
  _mode9.begin = r'~?".*?"';
  _mode10.scope = r'number';
  _mode10.begin =
      r'\b\d+(\.\d+)?(%|em|ex|ch|rem|vw|vh|vmin|vmax|cm|mm|in|pt|pc|px|deg|grad|rad|turn|s|ms|Hz|kHz|dpi|dpcm|dppx)?';
  _mode10.relevance = 0;
  _mode11.begin = r'(url|data-uri)\(';
  _mode11.starts = _mode12;
  _mode12.scope = r'string';
  _mode12.end = r'[\)\n]';
  _mode12.excludeEnd = true;
  _mode13.scope = r'number';
  _mode13.begin = r'#(([0-9a-fA-F]{3,4})|(([0-9a-fA-F]{2}){3,4}))\b';
  _mode14.begin = r'\(';
  _mode14.end = r'\)';
  _mode14.contains = [
    _mode0,
    _mode3,
    _mode8,
    _mode9,
    _mode10,
    _mode11,
    _mode13,
    r'self',
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode21,
  ];
  _mode14.keywords = {
    r'$pattern': r'[a-z-]+',
    r'keyword': r'and or not only',
    r'attribute':
        r'width update scripting scan resolution prefers-reduced-transparency prefers-reduced-motion prefers-contrast prefers-color-scheme pointer overflow-inline overflow-block orientation monochrome min-width min-height max-width max-height inverted-colors hover height grid forced-colors display-mode device-width device-height device-aspect-ratio color-index color-gamut color aspect-ratio any-pointer any-hover',
  };
  _mode14.relevance = 0;
  _mode15.scope = r'variable';
  _mode15.begin = r'@@?[\w-]+';
  _mode15.relevance = 10;
  _mode16.scope = r'variable';
  _mode16.begin = r'@\{[\w-]+\}';
  _mode17.scope = r'built_in';
  _mode17.begin = r'~?`[^`]*?`';
  _mode18.scope = r'attribute';
  _mode18.begin = r'[\w-]+\s*:';
  _mode18.end = r':';
  _mode18.returnBegin = true;
  _mode18.excludeEnd = true;
  _mode19.scope = r'meta';
  _mode19.begin = r'!important';
  _mode20.beginKeywords = r'and not';
  _mode21.scope = r'built_in';
  _mode21.begin = r'[\w-]+(?=\()';
  _mode22.scope = r'variable';
  _mode22.variants = [_mode23, _mode24];
  _mode22.starts = _mode25;
  _mode23.begin = r'@[\w-]+\s*:';
  _mode23.relevance = 15;
  _mode24.begin = r'@[\w-]+';
  _mode25.end = r'[;}]';
  _mode25.returnEnd = true;
  _mode25.contains = [
    _mode0,
    _mode3,
    _mode8,
    _mode9,
    _mode10,
    _mode11,
    _mode13,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode21,
    _mode26,
  ];
  _mode26.begin = r'\{';
  _mode26.end = r'\}';
  _mode26.contains = [
    _mode0,
    _mode3,
    _mode6,
    _mode22,
    _mode27,
    _mode48,
    _mode28,
    _mode31,
    _mode21,
  ];
  _mode27.begin =
      r'[\w-]+:(:)?(where|visited|valid|user-invalid|target-within|target|spelling-error|slotted|selection|scope|root|right|required|read-write|read-only|placeholder-shown|placeholder|past|part|out-of-range|optional|only-of-type|only-child|nth-of-type|nth-last-of-type|nth-last-col|nth-last-child|nth-col|nth-child|not|marker|local-link|link|left|last-of-type|last-child|lang|is|invalid|indeterminate|in-range|hover|host-context|host|has|grammar-error|future|fullscreen|focus-within|focus-visible|focus|first-of-type|first-line|first-letter|first-child|first|enabled|empty|drop|disabled|dir|defined|default|current|cue-region|cue|checked|blank|before|backdrop|any-link|after|active)';
  _mode27.returnBegin = true;
  _mode27.contains = [_mode28];
  _mode28.variants = [_mode29, _mode30];
  _mode28.returnBegin = true;
  _mode28.returnEnd = true;
  _mode28.illegal = '[<=\'\$"]';
  _mode28.relevance = 0;
  _mode28.contains = [
    _mode0,
    _mode3,
    _mode31,
    _mode33,
    _mode34,
    _mode35,
    _mode10,
    _mode36,
    _mode37,
    _mode38,
    _mode39,
    _mode40,
    _mode44,
    _mode45,
    _mode46,
    _mode47,
    _mode21,
  ];
  _mode29.begin = r'[\.#:&\[>]';
  _mode29.end = r'[;{}]';
  _mode30.begin = r'([\w-]+|@\{[\w-]+\})';
  _mode30.end = r'\{';
  _mode31.beginKeywords = r'when';
  _mode31.endsWithParent = true;
  _mode31.contains = [
    _mode32,
    _mode0,
    _mode3,
    _mode8,
    _mode9,
    _mode10,
    _mode11,
    _mode13,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode21,
  ];
  _mode32.beginKeywords = r'and not';
  _mode33.scope = r'keyword';
  _mode33.begin = r'all\b';
  _mode34.scope = r'variable';
  _mode34.begin = r'@\{[\w-]+\}';
  _mode35.begin =
      r'\b(a|abbr|address|article|aside|audio|b|blockquote|body|button|canvas|caption|cite|code|dd|del|details|dfn|div|dl|dt|em|fieldset|figcaption|figure|footer|form|h1|h2|h3|h4|h5|h6|header|hgroup|html|i|iframe|img|input|ins|kbd|label|legend|li|main|mark|menu|nav|object|ol|optgroup|option|p|picture|q|quote|samp|section|select|source|span|strong|summary|sup|table|tbody|td|textarea|tfoot|th|thead|time|tr|ul|var|video|defs|g|marker|mask|pattern|svg|switch|symbol|feBlend|feColorMatrix|feComponentTransfer|feComposite|feConvolveMatrix|feDiffuseLighting|feDisplacementMap|feFlood|feGaussianBlur|feImage|feMerge|feMorphology|feOffset|feSpecularLighting|feTile|feTurbulence|linearGradient|radialGradient|stop|circle|ellipse|image|line|path|polygon|polyline|rect|text|use|textPath|tspan|foreignObject|clipPath)\b';
  _mode35.scope = r'selector-tag';
  _mode36.scope = r'selector-tag';
  _mode36.begin = r'([\w-]+|@\{[\w-]+\})';
  _mode36.relevance = 0;
  _mode37.scope = r'selector-id';
  _mode37.begin = r'#([\w-]+|@\{[\w-]+\})';
  _mode38.scope = r'selector-class';
  _mode38.begin = r'\.([\w-]+|@\{[\w-]+\})';
  _mode38.relevance = 0;
  _mode39.scope = r'selector-tag';
  _mode39.begin = r'&';
  _mode39.relevance = 0;
  _mode40.scope = r'selector-attr';
  _mode40.begin = r'\[';
  _mode40.end = r'\]';
  _mode40.illegal = r'$';
  _mode40.contains = [_mode41, _mode43];
  _mode41.scope = r'string';
  _mode41.begin = r"'";
  _mode41.end = r"'";
  _mode41.illegal = r'\n';
  _mode41.contains = [_mode42];
  _mode42.begin = r'\\[\s\S]';
  _mode42.relevance = 0;
  _mode43.scope = r'string';
  _mode43.begin = r'"';
  _mode43.end = r'"';
  _mode43.illegal = r'\n';
  _mode43.contains = [_mode42];
  _mode44.scope = r'selector-pseudo';
  _mode44.begin =
      r':(where|visited|valid|user-invalid|target-within|target|scope|root|right|required|read-write|read-only|placeholder-shown|past|out-of-range|optional|only-of-type|only-child|nth-of-type|nth-last-of-type|nth-last-col|nth-last-child|nth-col|nth-child|not|local-link|link|left|last-of-type|last-child|lang|is|invalid|indeterminate|in-range|hover|host-context|host|has|future|fullscreen|focus-within|focus-visible|focus|first-of-type|first-child|first|enabled|empty|drop|disabled|dir|defined|default|current|checked|blank|any-link|active)';
  _mode45.scope = r'selector-pseudo';
  _mode45.begin =
      r':(:)?(spelling-error|slotted|selection|placeholder|part|marker|grammar-error|first-line|first-letter|cue-region|cue|before|backdrop|after)';
  _mode46.begin = r'\(';
  _mode46.end = r'\)';
  _mode46.relevance = 0;
  _mode46.contains = [
    _mode0,
    _mode3,
    _mode8,
    _mode9,
    _mode10,
    _mode11,
    _mode13,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode21,
    _mode26,
  ];
  _mode47.begin = r'!important';
  _mode48.begin = r'([\w-]+|@\{[\w-]+\})\s*:';
  _mode48.returnBegin = true;
  _mode48.end = r'[;}]';
  _mode48.relevance = 0;
  _mode48.contains = [_mode49, _mode50, _mode51];
  _mode49.begin = r'-(webkit|moz|ms|o)-';
  _mode50.scope = r'attr';
  _mode50.begin = r'--[A-Za-z_][A-Za-z0-9_-]*';
  _mode51.scope = r'attribute';
  _mode51.begin =
      r'\b(zoom|z-index|y|x|writing-mode|word-wrap|word-spacing|word-break|will-change|width|widows|white-space-collapse|white-space|voice-volume|voice-stress|voice-rate|voice-range|voice-pitch|voice-family|voice-duration|voice-balance|visibility|view-transition-name|view-timeline-name|view-timeline-inset|view-timeline-axis|view-timeline|vertical-align|vector-effect|user-select|user-modify|unicode-bidi|translate|transition-timing-function|transition-property|transition-duration|transition-delay|transition-behavior|transition|transform-style|transform-origin|transform-box|transform|touch-action|top|timeline-scope|text-wrap-style|text-wrap-mode|text-wrap|text-underline-position|text-underline-offset|text-transform|text-size-adjust|text-shadow|text-rendering|text-overflow|text-orientation|text-justify|text-indent|text-emphasis-style|text-emphasis-position|text-emphasis-color|text-emphasis|text-decoration-thickness|text-decoration-style|text-decoration-skip-ink|text-decoration-skip|text-decoration-line|text-decoration-color|text-decoration|text-combine-upright|text-anchor|text-align-last|text-align-all|text-align|table-layout|tab-size|stroke-width|stroke-opacity|stroke-miterlimit|stroke-linejoin|stroke-linecap|stroke-dashoffset|stroke-dasharray|stroke|stop-opacity|stop-color|src|speak-as|speak|shape-rendering|shape-outside|shape-margin|shape-image-threshold|scrollbar-width|scrollbar-gutter|scrollbar-color|scroll-timeline-name|scroll-timeline-axis|scroll-timeline|scroll-snap-type|scroll-snap-stop|scroll-snap-align|scroll-padding-top|scroll-padding-right|scroll-padding-left|scroll-padding-inline-start|scroll-padding-inline-end|scroll-padding-inline|scroll-padding-bottom|scroll-padding-block-start|scroll-padding-block-end|scroll-padding-block|scroll-padding|scroll-margin-top|scroll-margin-right|scroll-margin-left|scroll-margin-inline-start|scroll-margin-inline-end|scroll-margin-inline|scroll-margin-bottom|scroll-margin-block-start|scroll-margin-block-end|scroll-margin-block|scroll-margin|scroll-behavior|scale|ruby-position|ruby-align|row-gap|rotate|right|rest-before|rest-after|rest|resize|r|quotes|print-color-adjust|position-visibility|position-anchor|position|pointer-events|place-self|place-items|place-content|perspective-origin|perspective|pause-before|pause-after|pause|paint-order|page-break-inside|page-break-before|page-break-after|page|padding-top|padding-right|padding-left|padding-inline-start|padding-inline-end|padding-inline|padding-bottom|padding-block-start|padding-block-end|padding-block|padding|overscroll-behavior-y|overscroll-behavior-x|overscroll-behavior-inline|overscroll-behavior-block|overscroll-behavior|overlay|overflow-y|overflow-x|overflow-wrap|overflow-inline|overflow-clip-margin|overflow-block|overflow-anchor|overflow|outline-width|outline-style|outline-offset|outline-color|outline|orphans|order|opacity|offset-rotate|offset-position|offset-path|offset-distance|offset-anchor|offset|object-position|object-fit|normal|none|nav-up|nav-right|nav-left|nav-index|nav-down|mix-blend-mode|min-width|min-inline-size|min-height|min-block-size|max-width|max-inline-size|max-height|max-block-size|math-style|math-shift|math-depth|masonry-auto-flow|mask-type|mask-size|mask-repeat|mask-position|mask-origin|mask-mode|mask-image|mask-composite|mask-clip|mask-border-width|mask-border-source|mask-border-slice|mask-border-repeat|mask-border-outset|mask-border-mode|mask-border|mask|marks|marker-start|marker-mid|marker-end|marker|margin-trim|margin-top|margin-right|margin-left|margin-inline-start|margin-inline-end|margin-inline|margin-bottom|margin-block-start|margin-block-end|margin-block|margin|list-style-type|list-style-position|list-style-image|list-style|line-height-step|line-height|line-break|lighting-color|letter-spacing|left|kerning|justify-self|justify-items|justify-content|isolation|inset-inline-start|inset-inline-end|inset-inline|inset-block-start|inset-block-end|inset-block|inset-area|inset|inline-size|initial-letter-align|initial-letter|ime-mode|image-resolution|image-rendering|image-orientation|icon|hyphens|hyphenate-limit-chars|hyphenate-character|height|hanging-punctuation|grid-template-rows|grid-template-columns|grid-template-areas|grid-template|grid-row-start|grid-row-end|grid-row|grid-gap|grid-column-start|grid-column-end|grid-column|grid-auto-rows|grid-auto-flow|grid-auto-columns|grid-area|grid|glyph-orientation-vertical|glyph-orientation-horizontal|gap|forced-color-adjust|font-weight|font-variation-settings|font-variant-position|font-variant-numeric|font-variant-ligatures|font-variant-emoji|font-variant-east-asian|font-variant-caps|font-variant-alternates|font-variant|font-synthesis-weight|font-synthesis-style|font-synthesis-small-caps|font-synthesis-position|font-synthesis|font-style|font-stretch|font-smoothing|font-smooth|font-size-adjust|font-size|font-palette|font-optical-sizing|font-language-override|font-kerning|font-feature-settings|font-family|font-display|font|flow|flood-opacity|flood-color|float|flex-wrap|flex-shrink|flex-grow|flex-flow|flex-direction|flex-basis|flex|filter|fill-rule|fill-opacity|fill|field-sizing|enable-background|empty-cells|dominant-baseline|display|direction|cy|cx|cursor|cue-before|cue-after|cue|counter-set|counter-reset|counter-increment|content-visibility|content|container-type|container-name|container|contain-intrinsic-width|contain-intrinsic-size|contain-intrinsic-inline-size|contain-intrinsic-height|contain-intrinsic-block-size|contain|columns|column-width|column-span|column-rule-width|column-rule-style|column-rule-color|column-rule|column-gap|column-fill|column-count|color-scheme|color-rendering|color-profile|color-interpolation-filters|color-interpolation|color|clip-rule|clip-path|clip|clear|caret-color|caption-side|break-inside|break-before|break-after|box-sizing|box-shadow|box-pack|box-orient|box-ordinal-group|box-lines|box-flex-group|box-flex|box-direction|box-decoration-break|box-align|bottom|border-width|border-top-width|border-top-style|border-top-right-radius|border-top-left-radius|border-top-color|border-top|border-style|border-start-start-radius|border-start-end-radius|border-spacing|border-right-width|border-right-style|border-right-color|border-right|border-radius|border-left-width|border-left-style|border-left-color|border-left|border-inline-width|border-inline-style|border-inline-start-width|border-inline-start-style|border-inline-start-color|border-inline-start|border-inline-end-width|border-inline-end-style|border-inline-end-color|border-inline-end|border-inline-color|border-inline|border-image-width|border-image-source|border-image-slice|border-image-repeat|border-image-outset|border-image|border-end-start-radius|border-end-end-radius|border-color|border-collapse|border-bottom-width|border-bottom-style|border-bottom-right-radius|border-bottom-left-radius|border-bottom-color|border-bottom|border-block-width|border-block-style|border-block-start-width|border-block-start-style|border-block-start-color|border-block-start|border-block-end-width|border-block-end-style|border-block-end-color|border-block-end|border-block-color|border-block|border|block-size|baseline-shift|background-size|background-repeat|background-position-y|background-position-x|background-position|background-origin|background-image|background-color|background-clip|background-blend-mode|background-attachment|background|backface-visibility|backdrop-filter|aspect-ratio|appearance|animation-timing-function|animation-timeline|animation-range-start|animation-range-end|animation-range|animation-play-state|animation-name|animation-iteration-count|animation-fill-mode|animation-duration|animation-direction|animation-delay|animation-composition|animation|anchor-name|all|alignment-baseline|align-self|align-items|align-content|accent-color)\b';
  _mode51.end = r'(?=:)';
  _mode51.starts = _mode52;
  _mode52.endsWithParent = true;
  _mode52.illegal = r'[<=$]';
  _mode52.relevance = 0;
  _mode52.contains = [
    _mode0,
    _mode3,
    _mode8,
    _mode9,
    _mode10,
    _mode11,
    _mode13,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode21,
  ];
  return Mode(
    name: r'Less',
    caseInsensitive: true,
    illegal: '[=>\'/<(\$"]',
    contains: [
      _mode0,
      _mode3,
      _mode6,
      _mode22,
      _mode27,
      _mode48,
      _mode28,
      _mode31,
      _mode21,
    ],
  );
}

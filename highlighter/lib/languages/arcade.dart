// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final arcade = Mode(refs: {
  '~contains~2~contains~1~contains~3': Mode(
      className: "number",
      variants: [
        Mode(begin: "\\b(0[bB][01]+)"),
        Mode(begin: "\\b(0[oO][0-7]+)"),
        Mode(
            begin:
                "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)")
      ],
      relevance: 0),
  '~contains~2': Mode(className: "string", begin: "`", end: "`", contains: [
    BACKSLASH_ESCAPE,
    Mode(className: "subst", begin: "\\\$\\{", end: "\\}", keywords: {
      "keyword": "if for while var new function do return void else break",
      "literal":
          "BackSlash DoubleQuote false ForwardSlash Infinity NaN NewLine null PI SingleQuote Tab TextFormatting true undefined",
      "built_in":
          "Abs Acos Angle Attachments Area AreaGeodetic Asin Atan Atan2 Average Bearing Boolean Buffer BufferGeodetic Ceil Centroid Clip Console Constrain Contains Cos Count Crosses Cut Date DateAdd DateDiff Day Decode DefaultValue Dictionary Difference Disjoint Distance DistanceGeodetic Distinct DomainCode DomainName Equals Exp Extent Feature FeatureSet FeatureSetByAssociation FeatureSetById FeatureSetByPortalItem FeatureSetByRelationshipName FeatureSetByTitle FeatureSetByUrl Filter First Floor Geometry GroupBy Guid HasKey Hour IIf IndexOf Intersection Intersects IsEmpty IsNan IsSelfIntersecting Length LengthGeodetic Log Max Mean Millisecond Min Minute Month MultiPartToSinglePart Multipoint NextSequenceValue Now Number OrderBy Overlaps Point Polygon Polyline Portal Pow Random Relate Reverse RingIsClockWise Round Second SetGeometry Sin Sort Sqrt Stdev Sum SymmetricDifference Tan Text Timestamp Today ToLocal Top Touches ToUTC TrackCurrentTime TrackGeometryWindow TrackIndex TrackStartTime TrackWindow TypeOf Union UrlEncode Variance Weekday When Within Year "
    }, contains: [
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~2~contains~1~contains~3'),
      REGEXP_MODE
    ])
  ]),
}, aliases: [
  "arcade"
], keywords: {
  "keyword": "if for while var new function do return void else break",
  "literal":
      "BackSlash DoubleQuote false ForwardSlash Infinity NaN NewLine null PI SingleQuote Tab TextFormatting true undefined",
  "built_in":
      "Abs Acos Angle Attachments Area AreaGeodetic Asin Atan Atan2 Average Bearing Boolean Buffer BufferGeodetic Ceil Centroid Clip Console Constrain Contains Cos Count Crosses Cut Date DateAdd DateDiff Day Decode DefaultValue Dictionary Difference Disjoint Distance DistanceGeodetic Distinct DomainCode DomainName Equals Exp Extent Feature FeatureSet FeatureSetByAssociation FeatureSetById FeatureSetByPortalItem FeatureSetByRelationshipName FeatureSetByTitle FeatureSetByUrl Filter First Floor Geometry GroupBy Guid HasKey Hour IIf IndexOf Intersection Intersects IsEmpty IsNan IsSelfIntersecting Length LengthGeodetic Log Max Mean Millisecond Min Minute Month MultiPartToSinglePart Multipoint NextSequenceValue Now Number OrderBy Overlaps Point Polygon Polyline Portal Pow Random Relate Reverse RingIsClockWise Round Second SetGeometry Sin Sort Sqrt Stdev Sum SymmetricDifference Tan Text Timestamp Today ToLocal Top Touches ToUTC TrackCurrentTime TrackGeometryWindow TrackIndex TrackStartTime TrackWindow TypeOf Union UrlEncode Variance Weekday When Within Year "
}, contains: [
  APOS_STRING_MODE,
  QUOTE_STRING_MODE,
  Mode(ref: '~contains~2'),
  C_LINE_COMMENT_MODE,
  C_BLOCK_COMMENT_MODE,
  Mode(
      className: "symbol",
      begin:
          "\\\$[datastore|feature|layer|map|measure|sourcefeature|sourcelayer|targetfeature|targetlayer|value|view]+"),
  Mode(ref: '~contains~2~contains~1~contains~3'),
  Mode(begin: "[{,]\\s*", relevance: 0, contains: [
    Mode(
        begin: "[A-Za-z_][0-9A-Za-z_]*\\s*:",
        returnBegin: true,
        relevance: 0,
        contains: [
          Mode(className: "attr", begin: "[A-Za-z_][0-9A-Za-z_]*", relevance: 0)
        ])
  ]),
  Mode(
      begin:
          "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\\x7e|\\b(return)\\b)\\s*",
      keywords: "return",
      contains: [
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        REGEXP_MODE,
        Mode(
            className: "function",
            begin: "(\\(.*?\\)|[A-Za-z_][0-9A-Za-z_]*)\\s*=>",
            returnBegin: true,
            end: "\\s*=>",
            contains: [
              Mode(className: "params", variants: [
                Mode(begin: "[A-Za-z_][0-9A-Za-z_]*"),
                Mode(begin: "\\(\\s*\\)"),
                Mode(
                    begin: "\\(",
                    end: "\\)",
                    excludeBegin: true,
                    excludeEnd: true,
                    keywords: {
                      "keyword":
                          "if for while var new function do return void else break",
                      "literal":
                          "BackSlash DoubleQuote false ForwardSlash Infinity NaN NewLine null PI SingleQuote Tab TextFormatting true undefined",
                      "built_in":
                          "Abs Acos Angle Attachments Area AreaGeodetic Asin Atan Atan2 Average Bearing Boolean Buffer BufferGeodetic Ceil Centroid Clip Console Constrain Contains Cos Count Crosses Cut Date DateAdd DateDiff Day Decode DefaultValue Dictionary Difference Disjoint Distance DistanceGeodetic Distinct DomainCode DomainName Equals Exp Extent Feature FeatureSet FeatureSetByAssociation FeatureSetById FeatureSetByPortalItem FeatureSetByRelationshipName FeatureSetByTitle FeatureSetByUrl Filter First Floor Geometry GroupBy Guid HasKey Hour IIf IndexOf Intersection Intersects IsEmpty IsNan IsSelfIntersecting Length LengthGeodetic Log Max Mean Millisecond Min Minute Month MultiPartToSinglePart Multipoint NextSequenceValue Now Number OrderBy Overlaps Point Polygon Polyline Portal Pow Random Relate Reverse RingIsClockWise Round Second SetGeometry Sin Sort Sqrt Stdev Sum SymmetricDifference Tan Text Timestamp Today ToLocal Top Touches ToUTC TrackCurrentTime TrackGeometryWindow TrackIndex TrackStartTime TrackWindow TypeOf Union UrlEncode Variance Weekday When Within Year "
                    },
                    contains: [
                      APOS_STRING_MODE,
                      QUOTE_STRING_MODE,
                      Mode(ref: '~contains~2'),
                      Mode(ref: '~contains~2~contains~1~contains~3'),
                      REGEXP_MODE,
                      C_BLOCK_COMMENT_MODE,
                      C_LINE_COMMENT_MODE
                    ])
              ])
            ])
      ],
      relevance: 0),
  Mode(
      className: "function",
      beginKeywords: "function",
      end: "\\{",
      excludeEnd: true,
      contains: [
        Mode(className: "title", begin: "[A-Za-z_][0-9A-Za-z_]*", relevance: 0),
        Mode(
            className: "params",
            begin: "\\(",
            end: "\\)",
            excludeBegin: true,
            excludeEnd: true,
            contains: [
              APOS_STRING_MODE,
              QUOTE_STRING_MODE,
              Mode(ref: '~contains~2'),
              Mode(ref: '~contains~2~contains~1~contains~3'),
              REGEXP_MODE,
              C_BLOCK_COMMENT_MODE,
              C_LINE_COMMENT_MODE
            ])
      ],
      illegal: "\\[|%"),
  Mode(begin: "\\\$[(.]")
], illegal: "#(?!!)");

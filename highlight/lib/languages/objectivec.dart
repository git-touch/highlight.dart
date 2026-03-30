// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `objectivec`.
Mode objectivec(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  mode0.scope = r'comment';
  mode0.begin = r'//';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'comment';
  mode3.begin = r'/\*';
  mode3.end = r'\*/';
  mode3.contains = [mode4, mode5];
  mode4.scope = r'doctag';
  mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode4.excludeBegin = true;
  mode4.relevance = 0;
  mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode6.begin = r'\\[\s\S]';
  mode6.relevance = 0;
  return Mode(
    name: r'Objective-C',
    aliases: [r'mm', r'objc', r'obj-c', r'obj-c++', r'objective-c++'],
    keywords: {
      r'variable.language': [r'this', r'super'],
      r'$pattern': r'[a-zA-Z@][a-zA-Z0-9_]*',
      r'keyword': [
        r'while',
        r'export',
        r'sizeof',
        r'typedef',
        r'const',
        r'struct',
        r'for',
        r'union',
        r'volatile',
        r'static',
        r'mutable',
        r'if',
        r'do',
        r'return',
        r'goto',
        r'enum',
        r'else',
        r'break',
        r'extern',
        r'asm',
        r'case',
        r'default',
        r'register',
        r'explicit',
        r'typename',
        r'switch',
        r'continue',
        r'inline',
        r'readonly',
        r'assign',
        r'readwrite',
        r'self',
        r'@synchronized',
        r'id',
        r'typeof',
        r'nonatomic',
        r'IBOutlet',
        r'IBAction',
        r'strong',
        r'weak',
        r'copy',
        r'in',
        r'out',
        r'inout',
        r'bycopy',
        r'byref',
        r'oneway',
        r'__strong',
        r'__weak',
        r'__block',
        r'__autoreleasing',
        r'@private',
        r'@protected',
        r'@public',
        r'@try',
        r'@property',
        r'@end',
        r'@throw',
        r'@catch',
        r'@finally',
        r'@autoreleasepool',
        r'@synthesize',
        r'@dynamic',
        r'@selector',
        r'@optional',
        r'@required',
        r'@encode',
        r'@package',
        r'@import',
        r'@defs',
        r'@compatibility_alias',
        r'__bridge',
        r'__bridge_transfer',
        r'__bridge_retained',
        r'__bridge_retain',
        r'__covariant',
        r'__contravariant',
        r'__kindof',
        r'_Nonnull',
        r'_Nullable',
        r'_Null_unspecified',
        r'__FUNCTION__',
        r'__PRETTY_FUNCTION__',
        r'__attribute__',
        r'getter',
        r'setter',
        r'retain',
        r'unsafe_unretained',
        r'nonnull',
        r'nullable',
        r'null_unspecified',
        r'null_resettable',
        r'class',
        r'instancetype',
        r'NS_DESIGNATED_INITIALIZER',
        r'NS_UNAVAILABLE',
        r'NS_REQUIRES_SUPER',
        r'NS_RETURNS_INNER_POINTER',
        r'NS_INLINE',
        r'NS_AVAILABLE',
        r'NS_DEPRECATED',
        r'NS_ENUM',
        r'NS_OPTIONS',
        r'NS_SWIFT_UNAVAILABLE',
        r'NS_ASSUME_NONNULL_BEGIN',
        r'NS_ASSUME_NONNULL_END',
        r'NS_REFINED_FOR_SWIFT',
        r'NS_SWIFT_NAME',
        r'NS_SWIFT_NOTHROW',
        r'NS_DURING',
        r'NS_HANDLER',
        r'NS_ENDHANDLER',
        r'NS_VALUERETURN',
        r'NS_VOIDRETURN',
      ],
      r'literal': [
        r'false',
        r'true',
        r'FALSE',
        r'TRUE',
        r'nil',
        r'YES',
        r'NO',
        r'NULL',
      ],
      r'built_in': [
        r'dispatch_once_t',
        r'dispatch_queue_t',
        r'dispatch_sync',
        r'dispatch_async',
        r'dispatch_once',
      ],
      r'type': [
        r'int',
        r'float',
        r'char',
        r'unsigned',
        r'signed',
        r'short',
        r'long',
        r'double',
        r'wchar_t',
        r'unichar',
        r'void',
        r'bool',
        r'BOOL',
        r'id|0',
        r'_Bool',
      ],
    },
    illegal: r'</',
    contains: [
      Mode(
        scope: r'built_in',
        begin:
            r'\b(AV|CA|CF|CG|CI|CL|CM|CN|CT|MK|MP|MTK|MTL|NS|SCN|SK|UI|WK|XC)\w+',
      ),
      mode0,
      mode3,
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [mode6],
      ),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [mode6],
      ),
      Mode(
        scope: r'string',
        variants: [
          Mode(begin: r'@"', end: r'"', illegal: r'\n', contains: [mode6]),
        ],
      ),
      Mode(
        scope: r'meta',
        begin: r'#\s*[a-z]+\b',
        end: r'$',
        keywords: {
          r'keyword':
              r'if else elif endif define undef warning error line pragma ifdef ifndef include',
        },
        contains: [
          Mode(begin: r'\\\n', relevance: 0),
          Mode(
            scope: r'string',
            begin: r'"',
            end: r'"',
            illegal: r'\n',
            contains: [mode6],
          ),
          Mode(scope: r'string', begin: r'<.*?>', end: r'$', illegal: r'\n'),
          mode0,
          mode3,
        ],
      ),
      Mode(
        scope: r'class',
        begin: r'(@interface|@class|@protocol|@implementation)\b',
        end: r'(\{|$)',
        excludeEnd: true,
        keywords: {
          r'$pattern': r'[a-zA-Z@][a-zA-Z0-9_]*',
          r'keyword': [
            r'@interface',
            r'@class',
            r'@protocol',
            r'@implementation',
          ],
        },
        contains: [Mode(scope: r'title', begin: r'[a-zA-Z_]\w*', relevance: 0)],
      ),
      Mode(begin: r'\.[a-zA-Z_]\w*', relevance: 0),
    ],
  );
}

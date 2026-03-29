// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode php(Highlight hljs) {
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
  _mode0.begin =
      r'#\[\s*\\?(?:(\\?[A-Z][a-z0-9_\x7f-\xff]+|\\?[A-Z]+(?=[A-Z][a-z0-9_\x7f-\xff])){1,}(?![A-Za-z0-9])(?![$])|[A-Z]+(?![A-Za-z0-9])(?![$]))';
  _mode0.beginScope = r'meta';
  _mode0.end = r']';
  _mode0.endScope = r'meta';
  _mode0.keywords = {
    r'literal': [r'false', r'null', r'true'],
    r'keyword': [r'new', r'array'],
  };
  _mode0.contains = [
    _mode1,
    _mode2,
    _mode3,
    _mode9,
    _mode12,
    _mode21,
    _mode26,
    _mode28,
  ];
  _mode1.begin = r'\[';
  _mode1.end = r']';
  _mode1.keywords = {
    r'literal': [r'false', r'null', r'true'],
    r'keyword': [r'new', r'array'],
  };
  _mode1.contains = [
    r'self',
    _mode2,
    _mode3,
    _mode9,
    _mode12,
    _mode21,
    _mode26,
  ];
  _mode2.scope = r'attr';
  _mode2.match =
      r'[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*(?![A-Za-z0-9])(?![$])(?=:)(?=(?!::))';
  _mode3.variants = [_mode4, _mode5, _mode6, _mode7, _mode8];
  _mode4.match = [
    r'::(?=(?!class\b))',
    r'[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*(?![A-Za-z0-9])(?![$])\b(?!\()',
  ];
  _mode4.scope = {2: r'variable.constant'};
  _mode5.match = [r'::', r'class'];
  _mode5.scope = {2: r'variable.language'};
  _mode6.match = [
    r'(\\?[A-Z][a-z0-9_\x7f-\xff]+|\\?[A-Z]+(?=[A-Z][a-z0-9_\x7f-\xff])){1,}(?![A-Za-z0-9])(?![$])',
    r'::(?=(?!class\b))',
    r'[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*(?![A-Za-z0-9])(?![$])\b(?!\()',
  ];
  _mode6.scope = {1: r'title.class', 3: r'variable.constant'};
  _mode7.match = [
    r'(\\?[A-Z][a-z0-9_\x7f-\xff]+|\\?[A-Z]+(?=[A-Z][a-z0-9_\x7f-\xff])){1,}(?![A-Za-z0-9])(?![$])',
    r'::(?=(?!class\b))',
  ];
  _mode7.scope = {1: r'title.class'};
  _mode8.match = [
    r'(\\?[A-Z][a-z0-9_\x7f-\xff]+|\\?[A-Z]+(?=[A-Z][a-z0-9_\x7f-\xff])){1,}(?![A-Za-z0-9])(?![$])',
    r'::',
    r'class',
  ];
  _mode8.scope = {1: r'title.class', 3: r'variable.language'};
  _mode9.scope = r'comment';
  _mode9.begin = r'/\*';
  _mode9.end = r'\*/';
  _mode9.contains = [_mode10, _mode11];
  _mode10.scope = r'doctag';
  _mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode10.excludeBegin = true;
  _mode10.relevance = 0;
  _mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode12.scope = r'string';
  _mode12.variants = [_mode13, _mode18, _mode19, _mode20];
  _mode13.scope = r'string';
  _mode13.begin = r'"';
  _mode13.end = r'"';
  _mode13.contains = [_mode14, _mode15];
  _mode14.begin = r'\\[\s\S]';
  _mode14.relevance = 0;
  _mode15.scope = r'subst';
  _mode15.variants = [_mode16, _mode17];
  _mode16.begin = r'\$\w+';
  _mode17.begin = r'\{\$';
  _mode17.end = r'\}';
  _mode18.scope = r'string';
  _mode18.begin = r"'";
  _mode18.end = r"'";
  _mode18.contains = [_mode14];
  _mode19.begin = r'<<<[ \t]*(?:(\w+)|"(\w+)")\n';
  _mode19.end = r'[ \t]*(\w+)\b';
  _mode19.contains = [_mode14, _mode15];
  _mode19.onBegin = (RegExpMatch m, CallbackResponse resp) {
    resp.data['_beginMatch'] = m.group(1) ?? m.group(2);
  };
  _mode19.onEnd = (RegExpMatch m, CallbackResponse resp) {
    if (resp.data['_beginMatch'] != m.group(1)) resp.ignoreMatch();
  };
  _mode20.begin = r"<<<[ \t]*'(\w+)'\n";
  _mode20.end = r'[ \t]*(\w+)\b';
  _mode20.onBegin = (RegExpMatch m, CallbackResponse resp) {
    resp.data['_beginMatch'] = m.group(1);
  };
  _mode20.onEnd = (RegExpMatch m, CallbackResponse resp) {
    if (resp.data['_beginMatch'] != m.group(1)) resp.ignoreMatch();
  };
  _mode21.scope = r'number';
  _mode21.variants = [_mode22, _mode23, _mode24, _mode25];
  _mode21.relevance = 0;
  _mode22.begin = r'\b0[bB][01]+(?:_[01]+)*\b';
  _mode23.begin = r'\b0[oO][0-7]+(?:_[0-7]+)*\b';
  _mode24.begin = r'\b0[xX][\da-fA-F]+(?:_[\da-fA-F]+)*\b';
  _mode25.begin =
      r'(?:\b\d+(?:_\d+)*(\.(?:\d+(?:_\d+)*))?|\B\.\d+)(?:[eE][+-]?\d+)?';
  _mode26.variants = [_mode27];
  _mode27.match = [
    r'new',
    '[ \t\n]+',
    r'(?!Error\b|AppendIterator\b|ArgumentCountError\b|ArithmeticError\b|ArrayIterator\b|ArrayObject\b|AssertionError\b|BadFunctionCallException\b|BadMethodCallException\b|CachingIterator\b|CallbackFilterIterator\b|CompileError\b|Countable\b|DirectoryIterator\b|DivisionByZeroError\b|DomainException\b|EmptyIterator\b|ErrorException\b|Exception\b|FilesystemIterator\b|FilterIterator\b|GlobIterator\b|InfiniteIterator\b|InvalidArgumentException\b|IteratorIterator\b|LengthException\b|LimitIterator\b|LogicException\b|MultipleIterator\b|NoRewindIterator\b|OutOfBoundsException\b|OutOfRangeException\b|OuterIterator\b|OverflowException\b|ParentIterator\b|ParseError\b|RangeException\b|RecursiveArrayIterator\b|RecursiveCachingIterator\b|RecursiveCallbackFilterIterator\b|RecursiveDirectoryIterator\b|RecursiveFilterIterator\b|RecursiveIterator\b|RecursiveIteratorIterator\b|RecursiveRegexIterator\b|RecursiveTreeIterator\b|RegexIterator\b|RuntimeException\b|SeekableIterator\b|SplDoublyLinkedList\b|SplFileInfo\b|SplFileObject\b|SplFixedArray\b|SplHeap\b|SplMaxHeap\b|SplMinHeap\b|SplObjectStorage\b|SplObserver\b|SplPriorityQueue\b|SplQueue\b|SplStack\b|SplSubject\b|SplTempFileObject\b|TypeError\b|UnderflowException\b|UnexpectedValueException\b|UnhandledMatchError\b|ArrayAccess\b|BackedEnum\b|Closure\b|Fiber\b|Generator\b|Iterator\b|IteratorAggregate\b|Serializable\b|Stringable\b|Throwable\b|Traversable\b|UnitEnum\b|WeakReference\b|WeakMap\b|Directory\b|__PHP_Incomplete_Class\b|parent\b|php_user_filter\b|self\b|static\b|stdClass\b)',
    r'(\\?[A-Z][a-z0-9_\x7f-\xff]+|\\?[A-Z]+(?=[A-Z][a-z0-9_\x7f-\xff])){1,}(?![A-Za-z0-9])(?![$])',
  ];
  _mode27.scope = {1: r'keyword', 4: r'title.class'};
  _mode28.scope = r'meta';
  _mode28.variants = [_mode29, _mode30];
  _mode29.match =
      r'(\\?[A-Z][a-z0-9_\x7f-\xff]+|\\?[A-Z]+(?=[A-Z][a-z0-9_\x7f-\xff])){1,}(?![A-Za-z0-9])(?![$])';
  _mode30.match = r'[A-Z]+(?![A-Za-z0-9])(?![$])';
  _mode31.scope = r'variable';
  _mode31.match =
      r'\$+[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*(?![A-Za-z0-9])(?![$])';
  _mode32.relevance = 0;
  _mode32.match = [
    r'\b',
    r'(?!fn\b|function\b|__CLASS__\b|__DIR__\b|__FILE__\b|__FUNCTION__\b|__COMPILER_HALT_OFFSET__\b|__LINE__\b|__METHOD__\b|__NAMESPACE__\b|__TRAIT__\b|die\b|echo\b|exit\b|include\b|include_once\b|print\b|require\b|require_once\b|array\b|abstract\b|and\b|as\b|binary\b|bool\b|boolean\b|break\b|callable\b|case\b|catch\b|class\b|clone\b|const\b|continue\b|declare\b|default\b|do\b|double\b|else\b|elseif\b|empty\b|enddeclare\b|endfor\b|endforeach\b|endif\b|endswitch\b|endwhile\b|enum\b|eval\b|extends\b|final\b|finally\b|float\b|for\b|foreach\b|from\b|global\b|goto\b|if\b|implements\b|instanceof\b|insteadof\b|int\b|integer\b|interface\b|isset\b|iterable\b|list\b|match\b|mixed\b|new\b|never\b|object\b|or\b|private\b|protected\b|public\b|readonly\b|real\b|return\b|string\b|switch\b|throw\b|trait\b|try\b|unset\b|use\b|var\b|void\b|while\b|xor\b|yield|Error\b|AppendIterator\b|ArgumentCountError\b|ArithmeticError\b|ArrayIterator\b|ArrayObject\b|AssertionError\b|BadFunctionCallException\b|BadMethodCallException\b|CachingIterator\b|CallbackFilterIterator\b|CompileError\b|Countable\b|DirectoryIterator\b|DivisionByZeroError\b|DomainException\b|EmptyIterator\b|ErrorException\b|Exception\b|FilesystemIterator\b|FilterIterator\b|GlobIterator\b|InfiniteIterator\b|InvalidArgumentException\b|IteratorIterator\b|LengthException\b|LimitIterator\b|LogicException\b|MultipleIterator\b|NoRewindIterator\b|OutOfBoundsException\b|OutOfRangeException\b|OuterIterator\b|OverflowException\b|ParentIterator\b|ParseError\b|RangeException\b|RecursiveArrayIterator\b|RecursiveCachingIterator\b|RecursiveCallbackFilterIterator\b|RecursiveDirectoryIterator\b|RecursiveFilterIterator\b|RecursiveIterator\b|RecursiveIteratorIterator\b|RecursiveRegexIterator\b|RecursiveTreeIterator\b|RegexIterator\b|RuntimeException\b|SeekableIterator\b|SplDoublyLinkedList\b|SplFileInfo\b|SplFileObject\b|SplFixedArray\b|SplHeap\b|SplMaxHeap\b|SplMinHeap\b|SplObjectStorage\b|SplObserver\b|SplPriorityQueue\b|SplQueue\b|SplStack\b|SplSubject\b|SplTempFileObject\b|TypeError\b|UnderflowException\b|UnexpectedValueException\b|UnhandledMatchError\b|ArrayAccess\b|BackedEnum\b|Closure\b|Fiber\b|Generator\b|Iterator\b|IteratorAggregate\b|Serializable\b|Stringable\b|Throwable\b|Traversable\b|UnitEnum\b|WeakReference\b|WeakMap\b|Directory\b|__PHP_Incomplete_Class\b|parent\b|php_user_filter\b|self\b|static\b|stdClass\b)',
    r'[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*(?![A-Za-z0-9])(?![$])',
    '[ \t\n]*',
    r'(?=(?=\())',
  ];
  _mode32.scope = {3: r'title.function.invoke'};
  _mode32.contains = [
    Mode(
      relevance: 0,
      begin: r'\(',
      end: r'\)',
      keywords: {
        r'keyword': [
          r'__CLASS__',
          r'__DIR__',
          r'__FILE__',
          r'__FUNCTION__',
          r'__COMPILER_HALT_OFFSET__',
          r'__LINE__',
          r'__METHOD__',
          r'__NAMESPACE__',
          r'__TRAIT__',
          r'die',
          r'echo',
          r'exit',
          r'include',
          r'include_once',
          r'print',
          r'require',
          r'require_once',
          r'array',
          r'abstract',
          r'and',
          r'as',
          r'binary',
          r'bool',
          r'boolean',
          r'break',
          r'callable',
          r'case',
          r'catch',
          r'class',
          r'clone',
          r'const',
          r'continue',
          r'declare',
          r'default',
          r'do',
          r'double',
          r'else',
          r'elseif',
          r'empty',
          r'enddeclare',
          r'endfor',
          r'endforeach',
          r'endif',
          r'endswitch',
          r'endwhile',
          r'enum',
          r'eval',
          r'extends',
          r'final',
          r'finally',
          r'float',
          r'for',
          r'foreach',
          r'from',
          r'global',
          r'goto',
          r'if',
          r'implements',
          r'instanceof',
          r'insteadof',
          r'int',
          r'integer',
          r'interface',
          r'isset',
          r'iterable',
          r'list',
          r'match|0',
          r'mixed',
          r'new',
          r'never',
          r'object',
          r'or',
          r'private',
          r'protected',
          r'public',
          r'readonly',
          r'real',
          r'return',
          r'string',
          r'switch',
          r'throw',
          r'trait',
          r'try',
          r'unset',
          r'use',
          r'var',
          r'void',
          r'while',
          r'xor',
          r'yield',
        ],
        r'literal': [r'false', r'FALSE', r'null', r'NULL', r'true', r'TRUE'],
        r'built_in': [
          r'Error|0',
          r'AppendIterator',
          r'ArgumentCountError',
          r'ArithmeticError',
          r'ArrayIterator',
          r'ArrayObject',
          r'AssertionError',
          r'BadFunctionCallException',
          r'BadMethodCallException',
          r'CachingIterator',
          r'CallbackFilterIterator',
          r'CompileError',
          r'Countable',
          r'DirectoryIterator',
          r'DivisionByZeroError',
          r'DomainException',
          r'EmptyIterator',
          r'ErrorException',
          r'Exception',
          r'FilesystemIterator',
          r'FilterIterator',
          r'GlobIterator',
          r'InfiniteIterator',
          r'InvalidArgumentException',
          r'IteratorIterator',
          r'LengthException',
          r'LimitIterator',
          r'LogicException',
          r'MultipleIterator',
          r'NoRewindIterator',
          r'OutOfBoundsException',
          r'OutOfRangeException',
          r'OuterIterator',
          r'OverflowException',
          r'ParentIterator',
          r'ParseError',
          r'RangeException',
          r'RecursiveArrayIterator',
          r'RecursiveCachingIterator',
          r'RecursiveCallbackFilterIterator',
          r'RecursiveDirectoryIterator',
          r'RecursiveFilterIterator',
          r'RecursiveIterator',
          r'RecursiveIteratorIterator',
          r'RecursiveRegexIterator',
          r'RecursiveTreeIterator',
          r'RegexIterator',
          r'RuntimeException',
          r'SeekableIterator',
          r'SplDoublyLinkedList',
          r'SplFileInfo',
          r'SplFileObject',
          r'SplFixedArray',
          r'SplHeap',
          r'SplMaxHeap',
          r'SplMinHeap',
          r'SplObjectStorage',
          r'SplObserver',
          r'SplPriorityQueue',
          r'SplQueue',
          r'SplStack',
          r'SplSubject',
          r'SplTempFileObject',
          r'TypeError',
          r'UnderflowException',
          r'UnexpectedValueException',
          r'UnhandledMatchError',
          r'ArrayAccess',
          r'BackedEnum',
          r'Closure',
          r'Fiber',
          r'Generator',
          r'Iterator',
          r'IteratorAggregate',
          r'Serializable',
          r'Stringable',
          r'Throwable',
          r'Traversable',
          r'UnitEnum',
          r'WeakReference',
          r'WeakMap',
          r'Directory',
          r'__PHP_Incomplete_Class',
          r'parent',
          r'php_user_filter',
          r'self',
          r'static',
          r'stdClass',
        ],
      },
      contains: [
        _mode2,
        _mode31,
        _mode3,
        _mode9,
        _mode12,
        _mode21,
        _mode26,
        _mode32,
      ],
    ),
  ];
  _mode33.scope = r'title';
  _mode33.begin = r'[a-zA-Z_]\w*';
  _mode33.relevance = 0;
  return Mode(
    caseInsensitive: false,
    keywords: {
      r'keyword': [
        r'__CLASS__',
        r'__DIR__',
        r'__FILE__',
        r'__FUNCTION__',
        r'__COMPILER_HALT_OFFSET__',
        r'__LINE__',
        r'__METHOD__',
        r'__NAMESPACE__',
        r'__TRAIT__',
        r'die',
        r'echo',
        r'exit',
        r'include',
        r'include_once',
        r'print',
        r'require',
        r'require_once',
        r'array',
        r'abstract',
        r'and',
        r'as',
        r'binary',
        r'bool',
        r'boolean',
        r'break',
        r'callable',
        r'case',
        r'catch',
        r'class',
        r'clone',
        r'const',
        r'continue',
        r'declare',
        r'default',
        r'do',
        r'double',
        r'else',
        r'elseif',
        r'empty',
        r'enddeclare',
        r'endfor',
        r'endforeach',
        r'endif',
        r'endswitch',
        r'endwhile',
        r'enum',
        r'eval',
        r'extends',
        r'final',
        r'finally',
        r'float',
        r'for',
        r'foreach',
        r'from',
        r'global',
        r'goto',
        r'if',
        r'implements',
        r'instanceof',
        r'insteadof',
        r'int',
        r'integer',
        r'interface',
        r'isset',
        r'iterable',
        r'list',
        r'match|0',
        r'mixed',
        r'new',
        r'never',
        r'object',
        r'or',
        r'private',
        r'protected',
        r'public',
        r'readonly',
        r'real',
        r'return',
        r'string',
        r'switch',
        r'throw',
        r'trait',
        r'try',
        r'unset',
        r'use',
        r'var',
        r'void',
        r'while',
        r'xor',
        r'yield',
      ],
      r'literal': [r'false', r'FALSE', r'null', r'NULL', r'true', r'TRUE'],
      r'built_in': [
        r'Error|0',
        r'AppendIterator',
        r'ArgumentCountError',
        r'ArithmeticError',
        r'ArrayIterator',
        r'ArrayObject',
        r'AssertionError',
        r'BadFunctionCallException',
        r'BadMethodCallException',
        r'CachingIterator',
        r'CallbackFilterIterator',
        r'CompileError',
        r'Countable',
        r'DirectoryIterator',
        r'DivisionByZeroError',
        r'DomainException',
        r'EmptyIterator',
        r'ErrorException',
        r'Exception',
        r'FilesystemIterator',
        r'FilterIterator',
        r'GlobIterator',
        r'InfiniteIterator',
        r'InvalidArgumentException',
        r'IteratorIterator',
        r'LengthException',
        r'LimitIterator',
        r'LogicException',
        r'MultipleIterator',
        r'NoRewindIterator',
        r'OutOfBoundsException',
        r'OutOfRangeException',
        r'OuterIterator',
        r'OverflowException',
        r'ParentIterator',
        r'ParseError',
        r'RangeException',
        r'RecursiveArrayIterator',
        r'RecursiveCachingIterator',
        r'RecursiveCallbackFilterIterator',
        r'RecursiveDirectoryIterator',
        r'RecursiveFilterIterator',
        r'RecursiveIterator',
        r'RecursiveIteratorIterator',
        r'RecursiveRegexIterator',
        r'RecursiveTreeIterator',
        r'RegexIterator',
        r'RuntimeException',
        r'SeekableIterator',
        r'SplDoublyLinkedList',
        r'SplFileInfo',
        r'SplFileObject',
        r'SplFixedArray',
        r'SplHeap',
        r'SplMaxHeap',
        r'SplMinHeap',
        r'SplObjectStorage',
        r'SplObserver',
        r'SplPriorityQueue',
        r'SplQueue',
        r'SplStack',
        r'SplSubject',
        r'SplTempFileObject',
        r'TypeError',
        r'UnderflowException',
        r'UnexpectedValueException',
        r'UnhandledMatchError',
        r'ArrayAccess',
        r'BackedEnum',
        r'Closure',
        r'Fiber',
        r'Generator',
        r'Iterator',
        r'IteratorAggregate',
        r'Serializable',
        r'Stringable',
        r'Throwable',
        r'Traversable',
        r'UnitEnum',
        r'WeakReference',
        r'WeakMap',
        r'Directory',
        r'__PHP_Incomplete_Class',
        r'parent',
        r'php_user_filter',
        r'self',
        r'static',
        r'stdClass',
      ],
    },
    contains: [
      _mode0,
      Mode(
        scope: r'comment',
        begin: r'#',
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
      Mode(
        scope: r'comment',
        begin: r'/\*',
        end: r'\*/',
        contains: [
          Mode(scope: r'doctag', match: r'@[A-Za-z]+'),
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
      Mode(
        match: r'__halt_compiler\(\);',
        keywords: r'__halt_compiler',
        starts: Mode(
          scope: r'comment',
          end: r'\b\B',
          contains: [Mode(match: r'\?>', scope: r'meta', endsParent: true)],
        ),
      ),
      Mode(
        scope: r'meta',
        variants: [
          Mode(begin: r'<\?php', relevance: 10),
          Mode(begin: r'<\?='),
          Mode(begin: r'<\?', relevance: 0.1),
          Mode(begin: r'\?>'),
        ],
      ),
      Mode(scope: r'variable.language', match: r'\$this\b'),
      _mode31,
      _mode32,
      _mode3,
      Mode(
        match: [
          r'const',
          r'\s',
          r'[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*(?![A-Za-z0-9])(?![$])',
        ],
        scope: {1: r'keyword', 3: r'variable.constant'},
      ),
      _mode26,
      Mode(
        scope: r'function',
        relevance: 0,
        beginKeywords: r'fn function',
        end: r'[;{]',
        excludeEnd: true,
        illegal: r'[$%\[]',
        contains: [
          Mode(beginKeywords: r'use'),
          _mode33,
          Mode(begin: r'=>', endsParent: true),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            excludeBegin: true,
            excludeEnd: true,
            keywords: {
              r'keyword': [
                r'__CLASS__',
                r'__DIR__',
                r'__FILE__',
                r'__FUNCTION__',
                r'__COMPILER_HALT_OFFSET__',
                r'__LINE__',
                r'__METHOD__',
                r'__NAMESPACE__',
                r'__TRAIT__',
                r'die',
                r'echo',
                r'exit',
                r'include',
                r'include_once',
                r'print',
                r'require',
                r'require_once',
                r'array',
                r'abstract',
                r'and',
                r'as',
                r'binary',
                r'bool',
                r'boolean',
                r'break',
                r'callable',
                r'case',
                r'catch',
                r'class',
                r'clone',
                r'const',
                r'continue',
                r'declare',
                r'default',
                r'do',
                r'double',
                r'else',
                r'elseif',
                r'empty',
                r'enddeclare',
                r'endfor',
                r'endforeach',
                r'endif',
                r'endswitch',
                r'endwhile',
                r'enum',
                r'eval',
                r'extends',
                r'final',
                r'finally',
                r'float',
                r'for',
                r'foreach',
                r'from',
                r'global',
                r'goto',
                r'if',
                r'implements',
                r'instanceof',
                r'insteadof',
                r'int',
                r'integer',
                r'interface',
                r'isset',
                r'iterable',
                r'list',
                r'match|0',
                r'mixed',
                r'new',
                r'never',
                r'object',
                r'or',
                r'private',
                r'protected',
                r'public',
                r'readonly',
                r'real',
                r'return',
                r'string',
                r'switch',
                r'throw',
                r'trait',
                r'try',
                r'unset',
                r'use',
                r'var',
                r'void',
                r'while',
                r'xor',
                r'yield',
              ],
              r'literal': [
                r'false',
                r'FALSE',
                r'null',
                r'NULL',
                r'true',
                r'TRUE',
              ],
              r'built_in': [
                r'Error|0',
                r'AppendIterator',
                r'ArgumentCountError',
                r'ArithmeticError',
                r'ArrayIterator',
                r'ArrayObject',
                r'AssertionError',
                r'BadFunctionCallException',
                r'BadMethodCallException',
                r'CachingIterator',
                r'CallbackFilterIterator',
                r'CompileError',
                r'Countable',
                r'DirectoryIterator',
                r'DivisionByZeroError',
                r'DomainException',
                r'EmptyIterator',
                r'ErrorException',
                r'Exception',
                r'FilesystemIterator',
                r'FilterIterator',
                r'GlobIterator',
                r'InfiniteIterator',
                r'InvalidArgumentException',
                r'IteratorIterator',
                r'LengthException',
                r'LimitIterator',
                r'LogicException',
                r'MultipleIterator',
                r'NoRewindIterator',
                r'OutOfBoundsException',
                r'OutOfRangeException',
                r'OuterIterator',
                r'OverflowException',
                r'ParentIterator',
                r'ParseError',
                r'RangeException',
                r'RecursiveArrayIterator',
                r'RecursiveCachingIterator',
                r'RecursiveCallbackFilterIterator',
                r'RecursiveDirectoryIterator',
                r'RecursiveFilterIterator',
                r'RecursiveIterator',
                r'RecursiveIteratorIterator',
                r'RecursiveRegexIterator',
                r'RecursiveTreeIterator',
                r'RegexIterator',
                r'RuntimeException',
                r'SeekableIterator',
                r'SplDoublyLinkedList',
                r'SplFileInfo',
                r'SplFileObject',
                r'SplFixedArray',
                r'SplHeap',
                r'SplMaxHeap',
                r'SplMinHeap',
                r'SplObjectStorage',
                r'SplObserver',
                r'SplPriorityQueue',
                r'SplQueue',
                r'SplStack',
                r'SplSubject',
                r'SplTempFileObject',
                r'TypeError',
                r'UnderflowException',
                r'UnexpectedValueException',
                r'UnhandledMatchError',
                r'ArrayAccess',
                r'BackedEnum',
                r'Closure',
                r'Fiber',
                r'Generator',
                r'Iterator',
                r'IteratorAggregate',
                r'Serializable',
                r'Stringable',
                r'Throwable',
                r'Traversable',
                r'UnitEnum',
                r'WeakReference',
                r'WeakMap',
                r'Directory',
                r'__PHP_Incomplete_Class',
                r'parent',
                r'php_user_filter',
                r'self',
                r'static',
                r'stdClass',
              ],
            },
            contains: [
              r'self',
              _mode0,
              _mode31,
              _mode3,
              _mode9,
              _mode12,
              _mode21,
            ],
          ),
        ],
      ),
      Mode(
        scope: r'class',
        variants: [
          Mode(beginKeywords: r'enum', illegal: r'[($"]'),
          Mode(beginKeywords: r'class interface trait', illegal: r'[:($"]'),
        ],
        relevance: 0,
        end: r'\{',
        excludeEnd: true,
        contains: [
          Mode(beginKeywords: r'extends implements'),
          _mode33,
        ],
      ),
      Mode(
        beginKeywords: r'namespace',
        relevance: 0,
        end: r';',
        illegal: r"[.']",
        contains: [
          Mode(scope: r'title.class', begin: r'[a-zA-Z_]\w*', relevance: 0),
        ],
      ),
      Mode(
        beginKeywords: r'use',
        relevance: 0,
        end: r';',
        contains: [
          Mode(match: r'\b(as|const|function)\b', scope: r'keyword'),
          _mode33,
        ],
      ),
      _mode12,
      _mode21,
    ],
  );
}

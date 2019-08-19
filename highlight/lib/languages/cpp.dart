import 'common.dart';
import '../highlight.dart';

var cpp = Mode(
  refs: {
    '~contains~5':
        Mode(className: "meta", begin: "#\\s*[a-z]+\\b", end: "\$", keywords: {
      "meta-keyword":
          "if else elif endif define undef warning error line pragma ifdef ifndef include"
    }, contains: [
      Mode(begin: "\\\\\\n", relevance: 0),
      Mode(className: "meta-string", variants: [
        Mode(ref: '~contains~4~variants~0'),
        Mode(ref: '~contains~4~variants~1'),
        Mode(ref: '~contains~4~variants~2')
      ]),
      Mode(
          className: "meta-string",
          begin: "<[^\\n>]*>",
          end: "\$",
          illegal: "\\n"),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE
    ]),
    '~contains~4~variants~2': Mode(begin: "'\\\\?.", end: "'", illegal: "."),
    '~contains~4~variants~1':
        Mode(begin: "(?:u8?|U|L)?R\"([^()\\\\ ]{0,16})\\((?:.|\\n)*?\\)\\1\""),
    '~contains~4~variants~0': Mode(
        begin: "(u8?|U|L)?\"",
        end: "\"",
        illegal: "\\n",
        contains: [BACKSLASH_ESCAPE]),
    '~contains~4': Mode(className: "string", variants: [
      Mode(ref: '~contains~4~variants~0'),
      Mode(ref: '~contains~4~variants~1'),
      Mode(ref: '~contains~4~variants~2')
    ]),
    '~contains~3': Mode(
        className: "number",
        variants: [
          Mode(begin: "\\b(0b[01']+)"),
          Mode(
              begin:
                  "(-?)\\b([\\d']+(\\.[\\d']*)?|\\.[\\d']+)(u|U|l|L|ul|UL|f|F|b|B)"),
          Mode(
              begin:
                  "(-?)(\\b0[xX][a-fA-F0-9']+|(\\b[\\d']+(\\.[\\d']*)?|\\.[\\d']+)([eE][-+]?[\\d']+)?)")
        ],
        relevance: 0),
    '~contains~0': Mode(className: "keyword", begin: "\\b[a-z\\d_]*_t\\b"),
  },
  aliases: ["c", "cc", "h", "c++", "h++", "hpp", "hh", "hxx", "cxx"],
  keywords: {
    "keyword":
        "int float while private char catch import module export virtual operator sizeof dynamic_cast|10 typedef const_cast|10 const for static_cast|10 union namespace unsigned long volatile static protected bool template mutable if public friend do goto auto void enum else break extern using asm case typeid short reinterpret_cast|10 default double register explicit signed typename try this switch continue inline delete alignof constexpr decltype noexcept static_assert thread_local restrict _Bool complex _Complex _Imaginary atomic_bool atomic_char atomic_schar atomic_uchar atomic_short atomic_ushort atomic_int atomic_uint atomic_long atomic_ulong atomic_llong atomic_ullong new throw return and or not",
    "built_in":
        "std string cin cout cerr clog stdin stdout stderr stringstream istringstream ostringstream auto_ptr deque list queue stack vector map set bitset multiset multimap unordered_set unordered_map unordered_multiset unordered_multimap array shared_ptr abort abs acos asin atan2 atan calloc ceil cosh cos exit exp fabs floor fmod fprintf fputs free frexp fscanf isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace isupper isxdigit tolower toupper labs ldexp log10 log malloc realloc memchr memcmp memcpy memset modf pow printf putchar puts scanf sinh sin snprintf sprintf sqrt sscanf strcat strchr strcmp strcpy strcspn strlen strncat strncmp strncpy strpbrk strrchr strspn strstr tanh tan vfprintf vprintf vsprintf endl initializer_list unique_ptr",
    "literal": "true false nullptr NULL"
  },
  illegal: "</",
  contains: [
    Mode(ref: '~contains~0'),
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(ref: '~contains~3'),
    Mode(ref: '~contains~4'),
    Mode(ref: '~contains~5'),
    Mode(
        begin:
            "\\b(deque|list|queue|stack|vector|map|set|bitset|multiset|multimap|unordered_map|unordered_set|unordered_multiset|unordered_multimap|array)\\s*<",
        end: ">",
        keywords: {
          "keyword":
              "int float while private char catch import module export virtual operator sizeof dynamic_cast|10 typedef const_cast|10 const for static_cast|10 union namespace unsigned long volatile static protected bool template mutable if public friend do goto auto void enum else break extern using asm case typeid short reinterpret_cast|10 default double register explicit signed typename try this switch continue inline delete alignof constexpr decltype noexcept static_assert thread_local restrict _Bool complex _Complex _Imaginary atomic_bool atomic_char atomic_schar atomic_uchar atomic_short atomic_ushort atomic_int atomic_uint atomic_long atomic_ulong atomic_llong atomic_ullong new throw return and or not",
          "built_in":
              "std string cin cout cerr clog stdin stdout stderr stringstream istringstream ostringstream auto_ptr deque list queue stack vector map set bitset multiset multimap unordered_set unordered_map unordered_multiset unordered_multimap array shared_ptr abort abs acos asin atan2 atan calloc ceil cosh cos exit exp fabs floor fmod fprintf fputs free frexp fscanf isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace isupper isxdigit tolower toupper labs ldexp log10 log malloc realloc memchr memcmp memcpy memset modf pow printf putchar puts scanf sinh sin snprintf sprintf sqrt sscanf strcat strchr strcmp strcpy strcspn strlen strncat strncmp strncpy strpbrk strrchr strspn strstr tanh tan vfprintf vprintf vsprintf endl initializer_list unique_ptr",
          "literal": "true false nullptr NULL"
        },
        contains: [
          Mode(self: true),
          Mode(ref: '~contains~0')
        ]),
    Mode(begin: "[a-zA-Z]\\w*::", keywords: {
      "keyword":
          "int float while private char catch import module export virtual operator sizeof dynamic_cast|10 typedef const_cast|10 const for static_cast|10 union namespace unsigned long volatile static protected bool template mutable if public friend do goto auto void enum else break extern using asm case typeid short reinterpret_cast|10 default double register explicit signed typename try this switch continue inline delete alignof constexpr decltype noexcept static_assert thread_local restrict _Bool complex _Complex _Imaginary atomic_bool atomic_char atomic_schar atomic_uchar atomic_short atomic_ushort atomic_int atomic_uint atomic_long atomic_ulong atomic_llong atomic_ullong new throw return and or not",
      "built_in":
          "std string cin cout cerr clog stdin stdout stderr stringstream istringstream ostringstream auto_ptr deque list queue stack vector map set bitset multiset multimap unordered_set unordered_map unordered_multiset unordered_multimap array shared_ptr abort abs acos asin atan2 atan calloc ceil cosh cos exit exp fabs floor fmod fprintf fputs free frexp fscanf isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace isupper isxdigit tolower toupper labs ldexp log10 log malloc realloc memchr memcmp memcpy memset modf pow printf putchar puts scanf sinh sin snprintf sprintf sqrt sscanf strcat strchr strcmp strcpy strcspn strlen strncat strncmp strncpy strpbrk strrchr strspn strstr tanh tan vfprintf vprintf vsprintf endl initializer_list unique_ptr",
      "literal": "true false nullptr NULL"
    }),
    Mode(variants: [
      Mode(begin: "=", end: ";"),
      Mode(begin: "\\(", end: "\\)"),
      Mode(beginKeywords: "new throw return else", end: ";")
    ], keywords: {
      "keyword":
          "int float while private char catch import module export virtual operator sizeof dynamic_cast|10 typedef const_cast|10 const for static_cast|10 union namespace unsigned long volatile static protected bool template mutable if public friend do goto auto void enum else break extern using asm case typeid short reinterpret_cast|10 default double register explicit signed typename try this switch continue inline delete alignof constexpr decltype noexcept static_assert thread_local restrict _Bool complex _Complex _Imaginary atomic_bool atomic_char atomic_schar atomic_uchar atomic_short atomic_ushort atomic_int atomic_uint atomic_long atomic_ulong atomic_llong atomic_ullong new throw return and or not",
      "built_in":
          "std string cin cout cerr clog stdin stdout stderr stringstream istringstream ostringstream auto_ptr deque list queue stack vector map set bitset multiset multimap unordered_set unordered_map unordered_multiset unordered_multimap array shared_ptr abort abs acos asin atan2 atan calloc ceil cosh cos exit exp fabs floor fmod fprintf fputs free frexp fscanf isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace isupper isxdigit tolower toupper labs ldexp log10 log malloc realloc memchr memcmp memcpy memset modf pow printf putchar puts scanf sinh sin snprintf sprintf sqrt sscanf strcat strchr strcmp strcpy strcspn strlen strncat strncmp strncpy strpbrk strrchr strspn strstr tanh tan vfprintf vprintf vsprintf endl initializer_list unique_ptr",
      "literal": "true false nullptr NULL"
    }, contains: [
      Mode(ref: '~contains~0'),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      Mode(
          begin: "\\(",
          end: "\\)",
          keywords: {
            "keyword":
                "int float while private char catch import module export virtual operator sizeof dynamic_cast|10 typedef const_cast|10 const for static_cast|10 union namespace unsigned long volatile static protected bool template mutable if public friend do goto auto void enum else break extern using asm case typeid short reinterpret_cast|10 default double register explicit signed typename try this switch continue inline delete alignof constexpr decltype noexcept static_assert thread_local restrict _Bool complex _Complex _Imaginary atomic_bool atomic_char atomic_schar atomic_uchar atomic_short atomic_ushort atomic_int atomic_uint atomic_long atomic_ulong atomic_llong atomic_ullong new throw return and or not",
            "built_in":
                "std string cin cout cerr clog stdin stdout stderr stringstream istringstream ostringstream auto_ptr deque list queue stack vector map set bitset multiset multimap unordered_set unordered_map unordered_multiset unordered_multimap array shared_ptr abort abs acos asin atan2 atan calloc ceil cosh cos exit exp fabs floor fmod fprintf fputs free frexp fscanf isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace isupper isxdigit tolower toupper labs ldexp log10 log malloc realloc memchr memcmp memcpy memset modf pow printf putchar puts scanf sinh sin snprintf sprintf sqrt sscanf strcat strchr strcmp strcpy strcspn strlen strncat strncmp strncpy strpbrk strrchr strspn strstr tanh tan vfprintf vprintf vsprintf endl initializer_list unique_ptr",
            "literal": "true false nullptr NULL"
          },
          contains: [
            Mode(ref: '~contains~0'),
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            Mode(ref: '~contains~3'),
            Mode(ref: '~contains~4'),
            Mode(self: true)
          ],
          relevance: 0)
    ], relevance: 0),
    Mode(
        className: "function",
        begin: "([a-zA-Z]\\w*[\\*&\\s]+)+[a-zA-Z]\\w*\\s*\\(",
        returnBegin: true,
        end: "[{;=]",
        excludeEnd: true,
        keywords: {
          "keyword":
              "int float while private char catch import module export virtual operator sizeof dynamic_cast|10 typedef const_cast|10 const for static_cast|10 union namespace unsigned long volatile static protected bool template mutable if public friend do goto auto void enum else break extern using asm case typeid short reinterpret_cast|10 default double register explicit signed typename try this switch continue inline delete alignof constexpr decltype noexcept static_assert thread_local restrict _Bool complex _Complex _Imaginary atomic_bool atomic_char atomic_schar atomic_uchar atomic_short atomic_ushort atomic_int atomic_uint atomic_long atomic_ulong atomic_llong atomic_ullong new throw return and or not",
          "built_in":
              "std string cin cout cerr clog stdin stdout stderr stringstream istringstream ostringstream auto_ptr deque list queue stack vector map set bitset multiset multimap unordered_set unordered_map unordered_multiset unordered_multimap array shared_ptr abort abs acos asin atan2 atan calloc ceil cosh cos exit exp fabs floor fmod fprintf fputs free frexp fscanf isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace isupper isxdigit tolower toupper labs ldexp log10 log malloc realloc memchr memcmp memcpy memset modf pow printf putchar puts scanf sinh sin snprintf sprintf sqrt sscanf strcat strchr strcmp strcpy strcspn strlen strncat strncmp strncpy strpbrk strrchr strspn strstr tanh tan vfprintf vprintf vsprintf endl initializer_list unique_ptr",
          "literal": "true false nullptr NULL"
        },
        illegal: "[^\\w\\s\\*&]",
        contains: [
          Mode(
              begin: "[a-zA-Z]\\w*\\s*\\(",
              returnBegin: true,
              contains: [TITLE_MODE],
              relevance: 0),
          Mode(
              className: "params",
              begin: "\\(",
              end: "\\)",
              keywords: {
                "keyword":
                    "int float while private char catch import module export virtual operator sizeof dynamic_cast|10 typedef const_cast|10 const for static_cast|10 union namespace unsigned long volatile static protected bool template mutable if public friend do goto auto void enum else break extern using asm case typeid short reinterpret_cast|10 default double register explicit signed typename try this switch continue inline delete alignof constexpr decltype noexcept static_assert thread_local restrict _Bool complex _Complex _Imaginary atomic_bool atomic_char atomic_schar atomic_uchar atomic_short atomic_ushort atomic_int atomic_uint atomic_long atomic_ulong atomic_llong atomic_ullong new throw return and or not",
                "built_in":
                    "std string cin cout cerr clog stdin stdout stderr stringstream istringstream ostringstream auto_ptr deque list queue stack vector map set bitset multiset multimap unordered_set unordered_map unordered_multiset unordered_multimap array shared_ptr abort abs acos asin atan2 atan calloc ceil cosh cos exit exp fabs floor fmod fprintf fputs free frexp fscanf isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace isupper isxdigit tolower toupper labs ldexp log10 log malloc realloc memchr memcmp memcpy memset modf pow printf putchar puts scanf sinh sin snprintf sprintf sqrt sscanf strcat strchr strcmp strcpy strcspn strlen strncat strncmp strncpy strpbrk strrchr strspn strstr tanh tan vfprintf vprintf vsprintf endl initializer_list unique_ptr",
                "literal": "true false nullptr NULL"
              },
              relevance: 0,
              contains: [
                C_LINE_COMMENT_MODE,
                C_BLOCK_COMMENT_MODE,
                Mode(ref: '~contains~4'),
                Mode(ref: '~contains~3'),
                Mode(ref: '~contains~0'),
                Mode(
                    begin: "\\(",
                    end: "\\)",
                    keywords: {
                      "keyword":
                          "int float while private char catch import module export virtual operator sizeof dynamic_cast|10 typedef const_cast|10 const for static_cast|10 union namespace unsigned long volatile static protected bool template mutable if public friend do goto auto void enum else break extern using asm case typeid short reinterpret_cast|10 default double register explicit signed typename try this switch continue inline delete alignof constexpr decltype noexcept static_assert thread_local restrict _Bool complex _Complex _Imaginary atomic_bool atomic_char atomic_schar atomic_uchar atomic_short atomic_ushort atomic_int atomic_uint atomic_long atomic_ulong atomic_llong atomic_ullong new throw return and or not",
                      "built_in":
                          "std string cin cout cerr clog stdin stdout stderr stringstream istringstream ostringstream auto_ptr deque list queue stack vector map set bitset multiset multimap unordered_set unordered_map unordered_multiset unordered_multimap array shared_ptr abort abs acos asin atan2 atan calloc ceil cosh cos exit exp fabs floor fmod fprintf fputs free frexp fscanf isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace isupper isxdigit tolower toupper labs ldexp log10 log malloc realloc memchr memcmp memcpy memset modf pow printf putchar puts scanf sinh sin snprintf sprintf sqrt sscanf strcat strchr strcmp strcpy strcspn strlen strncat strncmp strncpy strpbrk strrchr strspn strstr tanh tan vfprintf vprintf vsprintf endl initializer_list unique_ptr",
                      "literal": "true false nullptr NULL"
                    },
                    relevance: 0,
                    contains: [
                      Mode(self: true),
                      C_LINE_COMMENT_MODE,
                      C_BLOCK_COMMENT_MODE,
                      Mode(ref: '~contains~4'),
                      Mode(ref: '~contains~3'),
                      Mode(ref: '~contains~0')
                    ])
              ]),
          C_LINE_COMMENT_MODE,
          C_BLOCK_COMMENT_MODE,
          Mode(ref: '~contains~5')
        ]),
    Mode(
        className: "class",
        beginKeywords: "class struct",
        end: "[{;:]",
        contains: [
          Mode(begin: "<", end: ">", contains: [Mode(self: true)]),
          TITLE_MODE
        ])
  ],
);

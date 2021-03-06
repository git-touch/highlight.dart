// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final matlab = Mode(
    refs: {
      '~contains~1~starts':
          Mode(relevance: 0, contains: [Mode(begin: "('|\\.')+")]),
    },
    keywords: {
      "keyword":
          "break case catch classdef continue else elseif end enumerated events for function global if methods otherwise parfor persistent properties return spmd switch try while",
      "built_in":
          "sin sind sinh asin asind asinh cos cosd cosh acos acosd acosh tan tand tanh atan atand atan2 atanh sec secd sech asec asecd asech csc cscd csch acsc acscd acsch cot cotd coth acot acotd acoth hypot exp expm1 log log1p log10 log2 pow2 realpow reallog realsqrt sqrt nthroot nextpow2 abs angle complex conj imag real unwrap isreal cplxpair fix floor ceil round mod rem sign airy besselj bessely besselh besseli besselk beta betainc betaln ellipj ellipke erf erfc erfcx erfinv expint gamma gammainc gammaln psi legendre cross dot factor isprime primes gcd lcm rat rats perms nchoosek factorial cart2sph cart2pol pol2cart sph2cart hsv2rgb rgb2hsv zeros ones eye repmat rand randn linspace logspace freqspace meshgrid accumarray size length ndims numel disp isempty isequal isequalwithequalnans cat reshape diag blkdiag tril triu fliplr flipud flipdim rot90 find sub2ind ind2sub bsxfun ndgrid permute ipermute shiftdim circshift squeeze isscalar isvector ans eps realmax realmin pi i inf nan isnan isinf isfinite j why compan gallery hadamard hankel hilb invhilb magic pascal rosser toeplitz vander wilkinson max min nanmax nanmin mean nanmean type table readtable writetable sortrows sort figure plot plot3 scatter scatter3 cellfun legend intersect ismember procrustes hold num2cell "
    },
    illegal: "(//|\"|#|/\\*|\\s+/\\w+)",
    contains: [
      Mode(
          className: "function",
          beginKeywords: "function",
          end: "\$",
          contains: [
            UNDERSCORE_TITLE_MODE,
            Mode(className: "params", variants: [
              Mode(begin: "\\(", end: "\\)"),
              Mode(begin: "\\[", end: "\\]")
            ])
          ]),
      Mode(
          className: "built_in",
          begin: "true|false",
          relevance: 0,
          starts: Mode(ref: '~contains~1~starts')),
      Mode(begin: "[a-zA-Z][a-zA-Z_0-9]*('|\\.')+", relevance: 0),
      Mode(
          className: "number",
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
          relevance: 0,
          starts: Mode(ref: '~contains~1~starts')),
      Mode(
          className: "string",
          begin: "'",
          end: "'",
          contains: [BACKSLASH_ESCAPE, Mode(begin: "''")]),
      Mode(
          begin: "\\]|}|\\)",
          relevance: 0,
          starts: Mode(ref: '~contains~1~starts')),
      Mode(
          className: "string",
          begin: "\"",
          end: "\"",
          contains: [BACKSLASH_ESCAPE, Mode(begin: "\"\"")],
          starts: Mode(ref: '~contains~1~starts')),
      Mode(
          className: "comment",
          begin: "^\\s*\\%\\{\\s*\$",
          end: "^\\s*\\%\\}\\s*\$",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ]),
      Mode(className: "comment", begin: "\\%", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ])
    ]);

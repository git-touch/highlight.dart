// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `matlab`.
Mode matlab(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  mode0.relevance = 0;
  mode0.contains = [mode1];
  mode1.begin = r"('|\.')+";
  return Mode(
    name: r'Matlab',
    keywords: {
      r'keyword':
          r'arguments break case catch classdef continue else elseif end enumeration events for function global if methods otherwise parfor persistent properties return spmd switch try while',
      r'built_in':
          r'sin sind sinh asin asind asinh cos cosd cosh acos acosd acosh tan tand tanh atan atand atan2 atanh sec secd sech asec asecd asech csc cscd csch acsc acscd acsch cot cotd coth acot acotd acoth hypot exp expm1 log log1p log10 log2 pow2 realpow reallog realsqrt sqrt nthroot nextpow2 abs angle complex conj imag real unwrap isreal cplxpair fix floor ceil round mod rem sign airy besselj bessely besselh besseli besselk beta betainc betaln ellipj ellipke erf erfc erfcx erfinv expint gamma gammainc gammaln psi legendre cross dot factor isprime primes gcd lcm rat rats perms nchoosek factorial cart2sph cart2pol pol2cart sph2cart hsv2rgb rgb2hsv zeros ones eye repmat rand randn linspace logspace freqspace meshgrid accumarray size length ndims numel disp isempty isequal isequalwithequalnans cat reshape diag blkdiag tril triu fliplr flipud flipdim rot90 find sub2ind ind2sub bsxfun ndgrid permute ipermute shiftdim circshift squeeze isscalar isvector ans eps realmax realmin pi i|0 inf nan isnan isinf isfinite j|0 why compan gallery hadamard hankel hilb invhilb magic pascal rosser toeplitz vander wilkinson max min nanmax nanmin mean nanmean type table readtable writetable sortrows sort figure plot plot3 scatter scatter3 cellfun legend intersect ismember procrustes hold num2cell ',
    },
    illegal: r'(//|"|#|/\*|\s+/\w+)',
    contains: [
      Mode(
        scope: r'function',
        beginKeywords: r'function',
        end: r'$',
        contains: [
          Mode(scope: r'title', begin: r'[a-zA-Z_]\w*', relevance: 0),
          Mode(
            scope: r'params',
            variants: [
              Mode(begin: r'\(', end: r'\)'),
              Mode(begin: r'\[', end: r'\]'),
            ],
          ),
        ],
      ),
      Mode(
        scope: r'built_in',
        begin: r'true|false',
        relevance: 0,
        starts: mode0,
      ),
      Mode(begin: r"[a-zA-Z][a-zA-Z_0-9]*('|\.')+", relevance: 0),
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
        starts: mode0,
      ),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        contains: [Mode(begin: r"''")],
      ),
      Mode(begin: r'\]|\}|\)', relevance: 0, starts: mode0),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        contains: [Mode(begin: r'""')],
        starts: mode0,
      ),
      Mode(
        scope: r'comment',
        begin: r'^\s*%\{\s*$',
        end: r'^\s*%\}\s*$',
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
        begin: r'%',
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
    ],
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `twig`.
Mode twig(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  mode0.match = r'\|(?=[A-Za-z_]+:?)';
  mode0.beginScope = r'punctuation';
  mode0.relevance = 0;
  mode0.contains = [mode1];
  mode1.match = r'[A-Za-z_]+:?';
  mode1.keywords = [
    r'abs',
    r'abbr_class',
    r'abbr_method',
    r'batch',
    r'capitalize',
    r'column',
    r'convert_encoding',
    r'country_name',
    r'currency_name',
    r'currency_symbol',
    r'data_uri',
    r'date',
    r'date_modify',
    r'default',
    r'escape',
    r'file_excerpt',
    r'file_link',
    r'file_relative',
    r'filter',
    r'first',
    r'format',
    r'format_args',
    r'format_args_as_text',
    r'format_currency',
    r'format_date',
    r'format_datetime',
    r'format_file',
    r'format_file_from_text',
    r'format_number',
    r'format_time',
    r'html_to_markdown',
    r'humanize',
    r'inky_to_html',
    r'inline_css',
    r'join',
    r'json_encode',
    r'keys',
    r'language_name',
    r'last',
    r'length',
    r'locale_name',
    r'lower',
    r'map',
    r'markdown',
    r'markdown_to_html',
    r'merge',
    r'nl2br',
    r'number_format',
    r'raw',
    r'reduce',
    r'replace',
    r'reverse',
    r'round',
    r'slice',
    r'slug',
    r'sort',
    r'spaceless',
    r'split',
    r'striptags',
    r'timezone_name',
    r'title',
    r'trans',
    r'transchoice',
    r'trim',
    r'u|0',
    r'upper',
    r'url_encode',
    r'yaml_dump',
    r'yaml_encode',
  ];
  mode2.beginKeywords =
      r'absolute_url asset|0 asset_version attribute block constant controller|0 country_timezones csrf_token cycle date dump expression form|0 form_end form_errors form_help form_label form_rest form_row form_start form_widget html_classes include is_granted logout_path logout_url max min parent path|0 random range relative_path render render_esi source template_from_string url|0';
  mode2.keywords = {
    r'name': [
      r'absolute_url',
      r'asset|0',
      r'asset_version',
      r'attribute',
      r'block',
      r'constant',
      r'controller|0',
      r'country_timezones',
      r'csrf_token',
      r'cycle',
      r'date',
      r'dump',
      r'expression',
      r'form|0',
      r'form_end',
      r'form_errors',
      r'form_help',
      r'form_label',
      r'form_rest',
      r'form_row',
      r'form_start',
      r'form_widget',
      r'html_classes',
      r'include',
      r'is_granted',
      r'logout_path',
      r'logout_url',
      r'max',
      r'min',
      r'parent',
      r'path|0',
      r'random',
      r'range',
      r'relative_path',
      r'render',
      r'render_esi',
      r'source',
      r'template_from_string',
      r'url|0',
    ],
  };
  mode2.relevance = 0;
  mode2.contains = [mode3];
  mode3.begin = r'\(';
  mode3.end = r'\)';
  mode3.excludeBegin = true;
  mode3.excludeEnd = true;
  mode3.contains = [mode4, mode7];
  mode4.scope = r'string';
  mode4.variants = [mode5, mode6];
  mode5.begin = r"'";
  mode5.end = r"'";
  mode6.begin = r'"';
  mode6.end = r'"';
  mode7.scope = r'number';
  mode7.match = r'\d+';
  return Mode(
    name: r'Twig',
    aliases: [r'craftcms'],
    caseInsensitive: true,
    subLanguage: r'xml',
    contains: [
      Mode(
        scope: r'comment',
        begin: r'\{#',
        end: r'#\}',
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
        beginScope: {1: r'template-tag', 3: r'name'},
        relevance: 2,
        endScope: r'template-tag',
        begin: [
          r'\{%',
          r'\s*',
          r'(?:apply|autoescape|block|cache|deprecated|do|embed|extends|filter|flush|for|form_theme|from|if|import|include|macro|sandbox|set|stopwatch|trans|trans_default_domain|transchoice|use|verbatim|with|endapply|endautoescape|endblock|endcache|enddeprecated|enddo|endembed|endextends|endfilter|endflush|endfor|endform_theme|endfrom|endif|endimport|endinclude|endmacro|endsandbox|endset|endstopwatch|endtrans|endtrans_default_domain|endtranschoice|enduse|endverbatim|endwith)',
        ],
        end: r'%\}',
        keywords: r'in',
        contains: [mode0, mode2, mode4, mode7],
      ),
      Mode(
        beginScope: {1: r'template-tag', 3: r'name'},
        relevance: 1,
        endScope: r'template-tag',
        begin: [r'\{%', r'\s*', r'(?:[a-z_]+)'],
        end: r'%\}',
        keywords: r'in',
        contains: [mode0, mode2, mode4, mode7],
      ),
      Mode(
        scope: r'template-variable',
        begin: r'\{\{',
        end: r'\}\}',
        contains: [r'self', mode0, mode2, mode4, mode7],
      ),
    ],
  );
}

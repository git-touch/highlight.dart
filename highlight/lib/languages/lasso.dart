// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `lasso`.
Mode lasso(Highlight hljs) {
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
  final Mode mode10 = Mode();
  final Mode mode11 = Mode();
  final Mode mode12 = Mode();
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  final Mode mode15 = Mode();
  final Mode mode16 = Mode();
  final Mode mode17 = Mode();
  final Mode mode18 = Mode();
  final Mode mode19 = Mode();
  final Mode mode20 = Mode();
  final Mode mode21 = Mode();
  final Mode mode22 = Mode();
  final Mode mode23 = Mode();
  final Mode mode24 = Mode();
  final Mode mode25 = Mode();
  final Mode mode26 = Mode();
  final Mode mode27 = Mode();
  mode0.scope = r'comment';
  mode0.begin = r'<!--';
  mode0.end = r'-->';
  mode0.contains = [mode1, mode2];
  mode0.relevance = 0;
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'meta';
  mode3.begin = r'\[noprocess\]';
  mode3.starts = mode4;
  mode4.end = r'\[/noprocess\]';
  mode4.returnEnd = true;
  mode4.contains = [mode0];
  mode5.scope = r'meta';
  mode5.begin = r'\[/noprocess|<\?(lasso(script)?|=)';
  mode6.scope = r'comment';
  mode6.begin = r'//';
  mode6.end = r'$';
  mode6.contains = [mode7, mode8];
  mode7.scope = r'doctag';
  mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode7.excludeBegin = true;
  mode7.relevance = 0;
  mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode9.scope = r'comment';
  mode9.begin = r'/\*';
  mode9.end = r'\*/';
  mode9.contains = [mode10, mode11];
  mode10.scope = r'doctag';
  mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode10.excludeBegin = true;
  mode10.relevance = 0;
  mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode12.scope = r'number';
  mode12.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)|(-?infinity|NaN)\b';
  mode12.relevance = 0;
  mode13.scope = r'string';
  mode13.begin = r"'";
  mode13.end = r"'";
  mode13.contains = [mode14];
  mode14.begin = r'\\[\s\S]';
  mode14.relevance = 0;
  mode15.scope = r'string';
  mode15.begin = r'"';
  mode15.end = r'"';
  mode15.contains = [mode14];
  mode16.scope = r'string';
  mode16.begin = r'`';
  mode16.end = r'`';
  mode17.variants = [mode18, mode19];
  mode18.begin = r'[#$][a-zA-Z_][\w.]*';
  mode19.begin = r'#';
  mode19.end = r'\d+';
  mode19.illegal = r'\W';
  mode20.scope = r'type';
  mode20.begin = r'::\s*';
  mode20.end = r'[a-zA-Z_][\w.]*';
  mode20.illegal = r'\W';
  mode21.scope = r'params';
  mode21.variants = [mode22, mode23];
  mode22.begin = r'-(?!infinity)[a-zA-Z_][\w.]*';
  mode22.relevance = 0;
  mode23.begin = r'(\.\.\.)';
  mode24.begin = r'(->|\.)\s*';
  mode24.relevance = 0;
  mode24.contains = [mode25];
  mode25.scope = r'symbol';
  mode25.begin = r"'[a-zA-Z_][\w.]*'";
  mode26.scope = r'class';
  mode26.beginKeywords = r'define';
  mode26.returnEnd = true;
  mode26.end = r'\(|=>';
  mode26.contains = [mode27];
  mode27.scope = r'title';
  mode27.begin = r'[a-zA-Z_][\w.]*(=(?!>))?|[-+*/%](?!>)';
  mode27.relevance = 0;
  return Mode(
    name: r'Lasso',
    aliases: [r'ls', r'lassoscript'],
    caseInsensitive: true,
    keywords: {
      r'$pattern': r'[a-zA-Z_][\w.]*|&[lg]t;',
      r'literal':
          r'true false none minimal full all void and or not bw nbw ew new cn ncn lt lte gt gte eq neq rx nrx ft',
      r'built_in':
          r'array date decimal duration integer map pair string tag xml null boolean bytes keyword list locale queue set stack staticarray local var variable global data self inherited currentcapture givenblock',
      r'keyword':
          r'cache database_names database_schemanames database_tablenames define_tag define_type email_batch encode_set html_comment handle handle_error header if inline iterate ljax_target link link_currentaction link_currentgroup link_currentrecord link_detail link_firstgroup link_firstrecord link_lastgroup link_lastrecord link_nextgroup link_nextrecord link_prevgroup link_prevrecord log loop namespace_using output_none portal private protect records referer referrer repeating resultset rows search_args search_arguments select sort_args sort_arguments thread_atomic value_list while abort case else fail_if fail_ifnot fail if_empty if_false if_null if_true loop_abort loop_continue loop_count params params_up return return_value run_children soap_definetag soap_lastrequest soap_lastresponse tag_name ascending average by define descending do equals frozen group handle_failure import in into join let match max min on order parent protected provide public require returnhome skip split_thread sum take thread to trait type where with yield yieldhome',
    },
    contains: [
      Mode(
        scope: r'meta',
        begin: r'\]|\?>',
        relevance: 0,
        starts: Mode(
          end: r'\[|<\?(lasso(script)?|=)',
          returnEnd: true,
          relevance: 0,
          contains: [mode0],
        ),
      ),
      mode3,
      mode5,
      Mode(
        scope: r'meta',
        begin: r'\[no_square_brackets',
        starts: Mode(
          end: r'\[/no_square_brackets\]',
          keywords: {
            r'$pattern': r'[a-zA-Z_][\w.]*|&[lg]t;',
            r'literal':
                r'true false none minimal full all void and or not bw nbw ew new cn ncn lt lte gt gte eq neq rx nrx ft',
            r'built_in':
                r'array date decimal duration integer map pair string tag xml null boolean bytes keyword list locale queue set stack staticarray local var variable global data self inherited currentcapture givenblock',
            r'keyword':
                r'cache database_names database_schemanames database_tablenames define_tag define_type email_batch encode_set html_comment handle handle_error header if inline iterate ljax_target link link_currentaction link_currentgroup link_currentrecord link_detail link_firstgroup link_firstrecord link_lastgroup link_lastrecord link_nextgroup link_nextrecord link_prevgroup link_prevrecord log loop namespace_using output_none portal private protect records referer referrer repeating resultset rows search_args search_arguments select sort_args sort_arguments thread_atomic value_list while abort case else fail_if fail_ifnot fail if_empty if_false if_null if_true loop_abort loop_continue loop_count params params_up return return_value run_children soap_definetag soap_lastrequest soap_lastresponse tag_name ascending average by define descending do equals frozen group handle_failure import in into join let match max min on order parent protected provide public require returnhome skip split_thread sum take thread to trait type where with yield yieldhome',
          },
          contains: [
            Mode(
              scope: r'meta',
              begin: r'\]|\?>',
              relevance: 0,
              starts: Mode(
                end: r'\[noprocess\]|<\?(lasso(script)?|=)',
                returnEnd: true,
                contains: [mode0],
              ),
            ),
            mode3,
            mode5,
            mode6,
            mode9,
            mode12,
            mode13,
            mode15,
            mode16,
            mode17,
            mode20,
            mode21,
            mode24,
            mode26,
          ],
        ),
      ),
      Mode(scope: r'meta', begin: r'\[', relevance: 0),
      Mode(scope: r'meta', begin: r'^#!', end: r'lasso9$', relevance: 10),
      mode6,
      mode9,
      mode12,
      mode13,
      mode15,
      mode16,
      mode17,
      mode20,
      mode21,
      mode24,
      mode26,
    ],
  );
}

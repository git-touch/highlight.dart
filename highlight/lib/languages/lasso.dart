// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode lasso(Highlight hljs) {
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
  _mode0.scope = r'comment';
  _mode0.begin = r'<!--';
  _mode0.end = r'-->';
  _mode0.contains = [_mode1, _mode2];
  _mode0.relevance = 0;
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'meta';
  _mode3.begin = r'\[noprocess\]';
  _mode3.starts = _mode4;
  _mode4.end = r'\[/noprocess\]';
  _mode4.returnEnd = true;
  _mode4.contains = [_mode0];
  _mode5.scope = r'meta';
  _mode5.begin = r'\[/noprocess|<\?(lasso(script)?|=)';
  _mode6.scope = r'comment';
  _mode6.begin = r'//';
  _mode6.end = r'$';
  _mode6.contains = [_mode7, _mode8];
  _mode7.scope = r'doctag';
  _mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode7.excludeBegin = true;
  _mode7.relevance = 0;
  _mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
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
  _mode12.scope = r'number';
  _mode12.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)|(-?infinity|NaN)\b';
  _mode12.relevance = 0;
  _mode13.scope = r'string';
  _mode13.begin = r"'";
  _mode13.end = r"'";
  _mode13.contains = [_mode14];
  _mode14.begin = r'\\[\s\S]';
  _mode14.relevance = 0;
  _mode15.scope = r'string';
  _mode15.begin = r'"';
  _mode15.end = r'"';
  _mode15.contains = [_mode14];
  _mode16.scope = r'string';
  _mode16.begin = r'`';
  _mode16.end = r'`';
  _mode17.variants = [_mode18, _mode19];
  _mode18.begin = r'[#$][a-zA-Z_][\w.]*';
  _mode19.begin = r'#';
  _mode19.end = r'\d+';
  _mode19.illegal = r'\W';
  _mode20.scope = r'type';
  _mode20.begin = r'::\s*';
  _mode20.end = r'[a-zA-Z_][\w.]*';
  _mode20.illegal = r'\W';
  _mode21.scope = r'params';
  _mode21.variants = [_mode22, _mode23];
  _mode22.begin = r'-(?!infinity)[a-zA-Z_][\w.]*';
  _mode22.relevance = 0;
  _mode23.begin = r'(\.\.\.)';
  _mode24.begin = r'(->|\.)\s*';
  _mode24.relevance = 0;
  _mode24.contains = [_mode25];
  _mode25.scope = r'symbol';
  _mode25.begin = r"'[a-zA-Z_][\w.]*'";
  _mode26.scope = r'class';
  _mode26.beginKeywords = r'define';
  _mode26.returnEnd = true;
  _mode26.end = r'\(|=>';
  _mode26.contains = [_mode27];
  _mode27.scope = r'title';
  _mode27.begin = r'[a-zA-Z_][\w.]*(=(?!>))?|[-+*/%](?!>)';
  _mode27.relevance = 0;
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
          contains: [_mode0],
        ),
      ),
      _mode3,
      _mode5,
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
                contains: [_mode0],
              ),
            ),
            _mode3,
            _mode5,
            _mode6,
            _mode9,
            _mode12,
            _mode13,
            _mode15,
            _mode16,
            _mode17,
            _mode20,
            _mode21,
            _mode24,
            _mode26,
          ],
        ),
      ),
      Mode(scope: r'meta', begin: r'\[', relevance: 0),
      Mode(scope: r'meta', begin: r'^#!', end: r'lasso9$', relevance: 10),
      _mode6,
      _mode9,
      _mode12,
      _mode13,
      _mode15,
      _mode16,
      _mode17,
      _mode20,
      _mode21,
      _mode24,
      _mode26,
    ],
  );
}

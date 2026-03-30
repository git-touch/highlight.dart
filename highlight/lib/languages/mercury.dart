// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `mercury`.
Mode mercury(Highlight hljs) {
  final Mode mode0 = Mode();
  mode0.begin = r'\\[\s\S]';
  mode0.relevance = 0;
  return Mode(
    name: r'Mercury',
    aliases: [r'm', r'moo'],
    keywords: {
      r'keyword':
          r'module use_module import_module include_module end_module initialise mutable initialize finalize finalise interface implementation pred mode func type inst solver any_pred any_func is semidet det nondet multi erroneous failure cc_nondet cc_multi typeclass instance where pragma promise external trace atomic or_else require_complete_switch require_det require_semidet require_multi require_nondet require_cc_multi require_cc_nondet require_erroneous require_failure',
      r'meta':
          r'inline no_inline type_spec source_file fact_table obsolete memo loop_check minimal_model terminates does_not_terminate check_termination promise_equivalent_clauses foreign_proc foreign_decl foreign_code foreign_type foreign_import_module foreign_export_enum foreign_export foreign_enum may_call_mercury will_not_call_mercury thread_safe not_thread_safe maybe_thread_safe promise_pure promise_semipure tabled_for_io local untrailed trailed attach_to_io_state can_pass_as_mercury_type stable will_not_throw_exception may_modify_trail will_not_modify_trail may_duplicate may_not_duplicate affects_liveness does_not_affect_liveness doesnt_affect_liveness no_sharing unknown_sharing sharing',
      r'built_in':
          r'some all not if then else true fail false try catch catch_any semidet_true semidet_false semidet_fail impure_true impure semipure',
    },
    contains: [
      Mode(
        scope: r'built_in',
        variants: [
          Mode(begin: r'<=>'),
          Mode(begin: r'<=', relevance: 0),
          Mode(begin: r'=>', relevance: 0),
          Mode(begin: r'/\\'),
          Mode(begin: r'\\/'),
        ],
      ),
      Mode(
        scope: r'built_in',
        variants: [
          Mode(begin: r':-\|-->'),
          Mode(begin: r'=', relevance: 0),
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
      Mode(
        scope: r'comment',
        begin: r'/\*',
        end: r'\*/',
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
      Mode(scope: r'number', begin: r"0'.\|0[box][0-9a-fA-F]*"),
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?', relevance: 0),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [mode0],
        relevance: 0,
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [
          mode0,
          Mode(
            scope: r'subst',
            begin:
                r'\\[abfnrtv]\|\\x[0-9a-fA-F]*\\\|%[-+# *.0-9]*[dioxXucsfeEgGp]',
            relevance: 0,
          ),
        ],
        relevance: 0,
      ),
      Mode(begin: r':-'),
      Mode(begin: r'\.$'),
    ],
  );
}

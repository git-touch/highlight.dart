// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final gn = Mode(refs: {}, aliases: [
  "gn",
  "gni"
], keywords: {
  "keyword": "if else",
  "literal":
      "true false current_cpu current_os current_toolchain default_toolchain host_cpu host_os root_build_dir root_gen_dir root_out_dir target_cpu target_gen_dir target_out_dir target_os target_name invoker",
  "type":
      "action action_foreach copy executable group shared_library source_set static_library loadable_module generated_file",
  "built_in":
      "assert config declare_args defined exec_script foreach get_label_info get_path_info get_target_outputs getenv import print process_file_template read_file rebase_path set_default_toolchain set_defaults set_sources_assignment_filter template tool toolchain toolchain_args propagates_configs write_file forward_variables_from target get_name_info not_needed",
  "symbol":
      "all_dependent_configs allow_circular_includes_from args asmflags cflags cflags_c cflags_cc cflags_objc cflags_objcc check_includes complete_static_lib configs data data_deps defines depfile deps include_dirs inputs ldflags lib_dirs libs output_extension output_name outputs public public_configs public_deps script sources testonly visibility contents output_conversion rebase data_keys walk_keys"
}, contains: [
  Mode(className: "number", relevance: 0, begin: "\\b\\d+(\\.\\d+)?"),
  Mode(
      className: "string",
      relevance: 0,
      begin: "\"",
      end: "\"",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(className: "subst", relevance: 2, variants: [
          Mode(begin: "\\\$[A-Za-z0-9_]+"),
          Mode(begin: "\\\${", end: "}", contains: [
            Mode(className: "variable", begin: "[a-zA-Z_]\\w*", relevance: 0)
          ])
        ]),
        Mode(className: "link", relevance: 5, begin: ":\\w+")
      ]),
  HASH_COMMENT_MODE
]);

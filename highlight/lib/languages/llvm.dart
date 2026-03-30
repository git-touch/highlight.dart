// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `llvm`.
Mode llvm(Highlight hljs) {
  return Mode(
    name: r'LLVM IR',
    keywords: {
      r'keyword':
          r'begin end true false declare define global constant private linker_private internal available_externally linkonce linkonce_odr weak weak_odr appending dllimport dllexport common default hidden protected extern_weak external thread_local zeroinitializer undef null to tail target triple datalayout volatile nuw nsw nnan ninf nsz arcp fast exact inbounds align addrspace section alias module asm sideeffect gc dbg linker_private_weak attributes blockaddress initialexec localdynamic localexec prefix unnamed_addr ccc fastcc coldcc x86_stdcallcc x86_fastcallcc arm_apcscc arm_aapcscc arm_aapcs_vfpcc ptx_device ptx_kernel intel_ocl_bicc msp430_intrcc spir_func spir_kernel x86_64_sysvcc x86_64_win64cc x86_thiscallcc cc c signext zeroext inreg sret nounwind noreturn noalias nocapture byval nest readnone readonly inlinehint noinline alwaysinline optsize ssp sspreq noredzone noimplicitfloat naked builtin cold nobuiltin noduplicate nonlazybind optnone returns_twice sanitize_address sanitize_memory sanitize_thread sspstrong uwtable returned type opaque eq ne slt sgt sle sge ult ugt ule uge oeq one olt ogt ole oge ord uno ueq une x acq_rel acquire alignstack atomic catch cleanup filter inteldialect max min monotonic nand personality release seq_cst singlethread umax umin unordered xchg add fadd sub fsub mul fmul udiv sdiv fdiv urem srem frem shl lshr ashr and or xor icmp fcmp phi call trunc zext sext fptrunc fpext uitofp sitofp fptoui fptosi inttoptr ptrtoint bitcast addrspacecast select va_arg ret br switch invoke unwind unreachable indirectbr landingpad resume malloc alloca free load store getelementptr extractelement insertelement shufflevector getresult extractvalue insertvalue atomicrmw cmpxchg fence argmemonly',
      r'type':
          r'void half bfloat float double fp128 x86_fp80 ppc_fp128 x86_amx x86_mmx ptr label token metadata opaque',
    },
    contains: [
      Mode(scope: r'type', begin: r'\bi\d+(?=\s|\b)'),
      Mode(
        scope: r'comment',
        begin: r';\s*$',
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
        relevance: 0,
      ),
      Mode(
        scope: r'comment',
        begin: r';',
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
        scope: r'string',
        begin: r'"',
        end: r'"',
        contains: [Mode(scope: r'char.escape', match: r'\\\d\d')],
      ),
      Mode(
        scope: r'title',
        variants: [
          Mode(begin: r'@([-a-zA-Z$._][\w$.-]*)'),
          Mode(begin: r'@\d+'),
          Mode(begin: r'!([-a-zA-Z$._][\w$.-]*)'),
          Mode(begin: r'!\d+([-a-zA-Z$._][\w$.-]*)'),
          Mode(begin: r'!\d+'),
        ],
      ),
      Mode(scope: r'punctuation', relevance: 0, begin: r','),
      Mode(scope: r'operator', relevance: 0, begin: r'='),
      Mode(
        scope: r'variable',
        variants: [
          Mode(begin: r'%([-a-zA-Z$._][\w$.-]*)'),
          Mode(begin: r'%\d+'),
          Mode(begin: r'#\d+'),
        ],
      ),
      Mode(
        scope: r'symbol',
        variants: [Mode(begin: r'^\s*[a-z]+:')],
        relevance: 0,
      ),
      Mode(
        scope: r'number',
        variants: [
          Mode(begin: r'[su]?0[xX][KMLHR]?[a-fA-F0-9]+'),
          Mode(begin: r'[-+]?\d+(?:[.]\d+)?(?:[eE][-+]?\d+(?:[.]\d+)?)?'),
        ],
        relevance: 0,
      ),
    ],
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode hsp(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  _mode0.scope = r'comment';
  _mode0.begin = r'//';
  _mode0.end = r'$';
  _mode0.contains = [_mode1, _mode2];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'comment';
  _mode3.begin = r'/\*';
  _mode3.end = r'\*/';
  _mode3.contains = [_mode4, _mode5];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.begin = r'\\[\s\S]';
  _mode6.relevance = 0;
  _mode7.scope = r'number';
  _mode7.begin = r'\b\d+(\.\d+)?';
  _mode7.relevance = 0;
  _mode8.scope = r'number';
  _mode8.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode8.relevance = 0;
  return Mode(
    name: r'HSP',
    caseInsensitive: true,
    keywords: {
      r'$pattern': r'[\w._]+',
      r'keyword':
          r'goto gosub return break repeat loop continue wait await dim sdim foreach dimtype dup dupptr end stop newmod delmod mref run exgoto on mcall assert logmes newlab resume yield onexit onerror onkey onclick oncmd exist delete mkdir chdir dirlist bload bsave bcopy memfile if else poke wpoke lpoke getstr chdpm memexpand memcpy memset notesel noteadd notedel noteload notesave randomize noteunsel noteget split strrep setease button chgdisp exec dialog mmload mmplay mmstop mci pset pget syscolor mes print title pos circle cls font sysfont objsize picload color palcolor palette redraw width gsel gcopy gzoom gmode bmpsave hsvcolor getkey listbox chkbox combox input mesbox buffer screen bgscr mouse objsel groll line clrobj boxf objprm objmode stick grect grotate gsquare gradf objimage objskip objenable celload celdiv celput newcom querycom delcom cnvstow comres axobj winobj sendmsg comevent comevarg sarrayconv callfunc cnvwtos comevdisp libptr system hspstat hspver stat cnt err strsize looplev sublev iparam wparam lparam refstr refdval int rnd strlen length length2 length3 length4 vartype gettime peek wpeek lpeek varptr varuse noteinfo instr abs limit getease str strmid strf getpath strtrim sin cos tan atan sqrt double absf expf logf limitf powf geteasef mousex mousey mousew hwnd hinstance hdc ginfo objinfo dirinfo sysinfo thismod __hspver__ __hsp30__ __date__ __time__ __line__ __file__ _debug __hspdef__ and or xor not screen_normal screen_palette screen_hide screen_fixedsize screen_tool screen_frame gmode_gdi gmode_mem gmode_rgb0 gmode_alpha gmode_rgb0alpha gmode_add gmode_sub gmode_pixela ginfo_mx ginfo_my ginfo_act ginfo_sel ginfo_wx1 ginfo_wy1 ginfo_wx2 ginfo_wy2 ginfo_vx ginfo_vy ginfo_sizex ginfo_sizey ginfo_winx ginfo_winy ginfo_mesx ginfo_mesy ginfo_r ginfo_g ginfo_b ginfo_paluse ginfo_dispx ginfo_dispy ginfo_cx ginfo_cy ginfo_intid ginfo_newid ginfo_sx ginfo_sy objinfo_mode objinfo_bmscr objinfo_hwnd notemax notesize dir_cur dir_exe dir_win dir_sys dir_cmdline dir_desktop dir_mydoc dir_tv font_normal font_bold font_italic font_underline font_strikeout font_antialias objmode_normal objmode_guifont objmode_usefont gsquare_grad msgothic msmincho do until while wend for next _break _continue switch case default swbreak swend ddim ldim alloc m_pi rad2deg deg2rad ease_linear ease_quad_in ease_quad_out ease_quad_inout ease_cubic_in ease_cubic_out ease_cubic_inout ease_quartic_in ease_quartic_out ease_quartic_inout ease_bounce_in ease_bounce_out ease_bounce_inout ease_shake_in ease_shake_out ease_shake_inout ease_loop',
    },
    contains: [
      _mode0,
      _mode3,
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [_mode6],
      ),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [_mode6],
      ),
      Mode(scope: r'string', begin: r'\{"', end: r'"\}', contains: [_mode6]),
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
        relevance: 0,
      ),
      Mode(
        scope: r'meta',
        begin: r'#',
        end: r'$',
        keywords: {
          r'keyword':
              r'addion cfunc cmd cmpopt comfunc const defcfunc deffunc define else endif enum epack func global if ifdef ifndef include modcfunc modfunc modinit modterm module pack packopt regcmd runtime undef usecom uselib',
        },
        contains: [
          Mode(
            scope: r'string',
            begin: r'"',
            end: r'"',
            illegal: r'\n',
            contains: [_mode6],
          ),
          _mode7,
          _mode8,
          _mode0,
          _mode3,
        ],
      ),
      Mode(scope: r'symbol', begin: r'^\*(\w+|@)'),
      _mode7,
      _mode8,
    ],
  );
}

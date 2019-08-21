import 'styles/zenburn.dart' as zenburn;
import 'styles/xt256.dart' as xt_256;
import 'styles/xcode.dart' as xcode;
import 'styles/vs2015.dart' as vs_2015;
import 'styles/vs.dart' as vs;
import 'styles/tomorrow.dart' as tomorrow;
import 'styles/tomorrow-night.dart' as tomorrow_night;
import 'styles/tomorrow-night-eighties.dart' as tomorrow_night_eighties;
import 'styles/tomorrow-night-bright.dart' as tomorrow_night_bright;
import 'styles/tomorrow-night-blue.dart' as tomorrow_night_blue;
import 'styles/sunburst.dart' as sunburst;
import 'styles/solarized-light.dart' as solarized_light;
import 'styles/solarized-dark.dart' as solarized_dark;
import 'styles/shades-of-purple.dart' as shades_of_purple;
import 'styles/school-book.dart' as school_book;
import 'styles/routeros.dart' as routeros;
import 'styles/rainbow.dart' as rainbow;
import 'styles/railscasts.dart' as railscasts;
import 'styles/qtcreator_light.dart' as qtcreator_light;
import 'styles/qtcreator_dark.dart' as qtcreator_dark;
import 'styles/purebasic.dart' as purebasic;
import 'styles/pojoaque.dart' as pojoaque;
import 'styles/paraiso-light.dart' as paraiso_light;
import 'styles/paraiso-dark.dart' as paraiso_dark;
import 'styles/ocean.dart' as ocean;
import 'styles/obsidian.dart' as obsidian;
import 'styles/nord.dart' as nord;
import 'styles/monokai.dart' as monokai;
import 'styles/monokai-sublime.dart' as monokai_sublime;
import 'styles/mono-blue.dart' as mono_blue;
import 'styles/magula.dart' as magula;
import 'styles/lightfair.dart' as lightfair;
import 'styles/kimbie.light.dart' as kimbie_light;
import 'styles/kimbie.dark.dart' as kimbie_dark;
import 'styles/isbl-editor-light.dart' as isbl_editor_light;
import 'styles/isbl-editor-dark.dart' as isbl_editor_dark;
import 'styles/ir-black.dart' as ir_black;
import 'styles/idea.dart' as idea;
import 'styles/hybrid.dart' as hybrid;
import 'styles/hopscotch.dart' as hopscotch;
import 'styles/gruvbox-light.dart' as gruvbox_light;
import 'styles/gruvbox-dark.dart' as gruvbox_dark;
import 'styles/grayscale.dart' as grayscale;
import 'styles/googlecode.dart' as googlecode;
import 'styles/gml.dart' as gml;
import 'styles/github.dart' as github;
import 'styles/github-gist.dart' as github_gist;
import 'styles/foundation.dart' as foundation;
import 'styles/far.dart' as far;
import 'styles/dracula.dart' as dracula;
import 'styles/docco.dart' as docco;
import 'styles/default.dart' as def;
import 'styles/darkula.dart' as darkula;
import 'styles/dark.dart' as dark;
import 'styles/darcula.dart' as darcula;
import 'styles/color-brewer.dart' as color_brewer;
import 'styles/codepen-embed.dart' as codepen_embed;
import 'styles/brown-paper.dart' as brown_paper;
import 'styles/atom-one-light.dart' as atom_one_light;
import 'styles/atom-one-dark.dart' as atom_one_dark;
import 'styles/atom-one-dark-reasonable.dart' as atom_one_dark_reasonable;
import 'styles/atelier-sulphurpool-light.dart' as atelier_sulphurpool_light;
import 'styles/atelier-sulphurpool-dark.dart' as atelier_sulphurpool_dark;
import 'styles/atelier-seaside-light.dart' as atelier_seaside_light;
import 'styles/atelier-seaside-dark.dart' as atelier_seaside_dark;
import 'styles/atelier-savanna-light.dart' as atelier_savanna_light;
import 'styles/atelier-savanna-dark.dart' as atelier_savanna_dark;
import 'styles/atelier-plateau-light.dart' as atelier_plateau_light;
import 'styles/atelier-plateau-dark.dart' as atelier_plateau_dark;
import 'styles/atelier-lakeside-light.dart' as atelier_lakeside_light;
import 'styles/atelier-lakeside-dark.dart' as atelier_lakeside_dark;
import 'styles/atelier-heath-light.dart' as atelier_heath_light;
import 'styles/atelier-heath-dark.dart' as atelier_heath_dark;
import 'styles/atelier-forest-light.dart' as atelier_forest_light;
import 'styles/atelier-forest-dark.dart' as atelier_forest_dark;
import 'styles/atelier-estuary-light.dart' as atelier_estuary_light;
import 'styles/atelier-estuary-dark.dart' as atelier_estuary_dark;
import 'styles/atelier-dune-light.dart' as atelier_dune_light;
import 'styles/atelier-dune-dark.dart' as atelier_dune_dark;
import 'styles/atelier-cave-light.dart' as atelier_cave_light;
import 'styles/atelier-cave-dark.dart' as atelier_cave_dark;
import 'styles/ascetic.dart' as ascetic;
import 'styles/arta.dart' as arta;
import 'styles/arduino-light.dart' as arduino_light;
import 'styles/androidstudio.dart' as androidstudio;
import 'styles/an-old-hope.dart' as an_old_hope;
import 'styles/agate.dart' as agate;
import 'styles/a11y-light.dart' as a_11_y_light;
import 'styles/a11y-dark.dart' as a_11_y_dark;

var allStyles = {
  'a11y-dark': a_11_y_dark.style,
  'a11y-light': a_11_y_light.style,
  'agate': agate.style,
  'an-old-hope': an_old_hope.style,
  'androidstudio': androidstudio.style,
  'arduino-light': arduino_light.style,
  'arta': arta.style,
  'ascetic': ascetic.style,
  'atelier-cave-dark': atelier_cave_dark.style,
  'atelier-cave-light': atelier_cave_light.style,
  'atelier-dune-dark': atelier_dune_dark.style,
  'atelier-dune-light': atelier_dune_light.style,
  'atelier-estuary-dark': atelier_estuary_dark.style,
  'atelier-estuary-light': atelier_estuary_light.style,
  'atelier-forest-dark': atelier_forest_dark.style,
  'atelier-forest-light': atelier_forest_light.style,
  'atelier-heath-dark': atelier_heath_dark.style,
  'atelier-heath-light': atelier_heath_light.style,
  'atelier-lakeside-dark': atelier_lakeside_dark.style,
  'atelier-lakeside-light': atelier_lakeside_light.style,
  'atelier-plateau-dark': atelier_plateau_dark.style,
  'atelier-plateau-light': atelier_plateau_light.style,
  'atelier-savanna-dark': atelier_savanna_dark.style,
  'atelier-savanna-light': atelier_savanna_light.style,
  'atelier-seaside-dark': atelier_seaside_dark.style,
  'atelier-seaside-light': atelier_seaside_light.style,
  'atelier-sulphurpool-dark': atelier_sulphurpool_dark.style,
  'atelier-sulphurpool-light': atelier_sulphurpool_light.style,
  'atom-one-dark-reasonable': atom_one_dark_reasonable.style,
  'atom-one-dark': atom_one_dark.style,
  'atom-one-light': atom_one_light.style,
  'brown-paper': brown_paper.style,
  'codepen-embed': codepen_embed.style,
  'color-brewer': color_brewer.style,
  'darcula': darcula.style,
  'dark': dark.style,
  'darkula': darkula.style,
  'default': def.style,
  'docco': docco.style,
  'dracula': dracula.style,
  'far': far.style,
  'foundation': foundation.style,
  'github-gist': github_gist.style,
  'github': github.style,
  'gml': gml.style,
  'googlecode': googlecode.style,
  'grayscale': grayscale.style,
  'gruvbox-dark': gruvbox_dark.style,
  'gruvbox-light': gruvbox_light.style,
  'hopscotch': hopscotch.style,
  'hybrid': hybrid.style,
  'idea': idea.style,
  'ir-black': ir_black.style,
  'isbl-editor-dark': isbl_editor_dark.style,
  'isbl-editor-light': isbl_editor_light.style,
  'kimbie.dark': kimbie_dark.style,
  'kimbie.light': kimbie_light.style,
  'lightfair': lightfair.style,
  'magula': magula.style,
  'mono-blue': mono_blue.style,
  'monokai-sublime': monokai_sublime.style,
  'monokai': monokai.style,
  'nord': nord.style,
  'obsidian': obsidian.style,
  'ocean': ocean.style,
  'paraiso-dark': paraiso_dark.style,
  'paraiso-light': paraiso_light.style,
  'pojoaque': pojoaque.style,
  'purebasic': purebasic.style,
  'qtcreator_dark': qtcreator_dark.style,
  'qtcreator_light': qtcreator_light.style,
  'railscasts': railscasts.style,
  'rainbow': rainbow.style,
  'routeros': routeros.style,
  'school-book': school_book.style,
  'shades-of-purple': shades_of_purple.style,
  'solarized-dark': solarized_dark.style,
  'solarized-light': solarized_light.style,
  'sunburst': sunburst.style,
  'tomorrow-night-blue': tomorrow_night_blue.style,
  'tomorrow-night-bright': tomorrow_night_bright.style,
  'tomorrow-night-eighties': tomorrow_night_eighties.style,
  'tomorrow-night': tomorrow_night.style,
  'tomorrow': tomorrow.style,
  'vs': vs.style,
  'vs2015': vs_2015.style,
  'xcode': xcode.style,
  'xt256': xt_256.style,
  'zenburn': zenburn.style,
};

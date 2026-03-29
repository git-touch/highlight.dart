import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

Directory vendorFixtureDirectory(String name) {
  final directory = Directory(
    p.normalize(p.join('..', 'vendor', 'highlight.js', 'test', name)),
  );

  if (!directory.existsSync()) {
    fail(
      'Vendor fixtures directory not found: ${directory.path}\n'
      'Run `git submodule update --init --recursive` from the repo root.',
    );
  }

  return directory;
}

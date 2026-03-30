import 'dart:convert';
import 'dart:io';

void main() async {
  final repoRoot = Directory.current.absolute;

  await _checkPackage(
    name: 'highlight',
    packageDir: Directory(_join(repoRoot.path, 'highlight')),
  );

  final tempWorkspace = _createFlutterHighlightWorkspace(repoRoot);
  try {
    await _checkPackage(
      name: 'flutter_highlight',
      packageDir: Directory(_join(tempWorkspace.path, 'flutter_highlight')),
      note: 'using a temporary path dependency on the local highlight package',
    );
  } finally {
    tempWorkspace.deleteSync(recursive: true);
  }
}

Future<void> _checkPackage({
  required String name,
  required Directory packageDir,
  String? note,
}) async {
  final location = packageDir.absolute.path;
  stdout.writeln('==> Checking $name');
  if (note != null) {
    stdout.writeln('    $note');
  }
  stdout.writeln('    package: $location');

  final result = await Process.run('dart', [
    'pub',
    'global',
    'run',
    'pana',
    '--json',
    location,
  ], workingDirectory: Directory.current.path);

  final report = _parsePanaReport(
    name: name,
    stdoutText: result.stdout as String,
    stderrText: result.stderr as String,
    exitCode: result.exitCode,
  );

  final scoreLine = '    score: ${report.grantedPoints}/${report.maxPoints}';
  stdout.writeln(scoreLine);

  final expectedRegressions = <PanaSection>[];
  final unexpectedRegressions = <PanaSection>[];
  for (final section in report.sections) {
    if (section.grantedPoints == section.maxPoints) {
      continue;
    }

    if (_isExpectedTemporaryRegression(name: name, section: section)) {
      expectedRegressions.add(section);
      continue;
    }

    unexpectedRegressions.add(section);
  }

  for (final section in expectedRegressions) {
    stdout.writeln(
      '    expected temporary gap: '
      '${section.title}: ${section.grantedPoints}/${section.maxPoints}',
    );
  }

  if (unexpectedRegressions.isEmpty) {
    if (expectedRegressions.isEmpty) {
      stdout.writeln('    all scored sections are at full points');
    } else {
      stdout.writeln(
        '    all enforced sections are at full points after temporary allowances',
      );
    }
    return;
  }

  stderr.writeln('Score regression detected for $name:');
  for (final section in unexpectedRegressions) {
    stderr.writeln(
      '  - ${section.title}: ${section.grantedPoints}/${section.maxPoints}',
    );
  }
  exitCode = 1;
}

Directory _createFlutterHighlightWorkspace(Directory repoRoot) {
  final tempRoot = Directory.systemTemp.createTempSync(
    'highlight-dart-pub-score-',
  );

  File(
    _join(repoRoot.path, 'pubspec.yaml'),
  ).copySync(_join(tempRoot.path, 'pubspec.yaml'));
  _copyDirectory(
    Directory(_join(repoRoot.path, 'highlight')),
    Directory(_join(tempRoot.path, 'highlight')),
  );
  _copyDirectory(
    Directory(_join(repoRoot.path, 'flutter_highlight')),
    Directory(_join(tempRoot.path, 'flutter_highlight')),
  );

  final highlightPath = Directory(_join(tempRoot.path, 'highlight')).path;
  _rewritePackageToPathDependency(
    file: File(_join(tempRoot.path, 'flutter_highlight', 'pubspec.yaml')),
    packageName: 'highlight',
    path: highlightPath,
  );
  _rewritePackageToPathDependency(
    file: File(
      _join(tempRoot.path, 'flutter_highlight', 'example', 'pubspec.yaml'),
    ),
    packageName: 'highlight',
    path: highlightPath,
  );

  return tempRoot;
}

void _rewritePackageToPathDependency({
  required File file,
  required String packageName,
  required String path,
}) {
  final lines = file.readAsLinesSync();
  final rewritten = <String>[];

  for (var i = 0; i < lines.length; i++) {
    final line = lines[i];
    if (line == '  $packageName:') {
      rewritten.add(line);
      rewritten.add("    path: ${_yamlSingleQuoted(path)}");

      while (i + 1 < lines.length) {
        final nextLine = lines[i + 1];
        if (nextLine.isEmpty || _leadingSpaceCount(nextLine) <= 2) {
          break;
        }
        i++;
      }
      continue;
    }

    rewritten.add(line);
  }

  file.writeAsStringSync('${rewritten.join('\n')}\n');
}

void _copyDirectory(Directory source, Directory destination) {
  destination.createSync(recursive: true);
  for (final entity in source.listSync(recursive: true, followLinks: false)) {
    final relativePath = entity.path.substring(source.path.length + 1);
    final targetPath = _join(destination.path, relativePath);

    if (entity is Directory) {
      Directory(targetPath).createSync(recursive: true);
      continue;
    }
    if (entity is File) {
      File(targetPath).parent.createSync(recursive: true);
      entity.copySync(targetPath);
      continue;
    }
    if (entity is Link) {
      Link(targetPath).createSync(entity.targetSync(), recursive: true);
    }
  }
}

PanaReport _parsePanaReport({
  required String name,
  required String stdoutText,
  required String stderrText,
  required int exitCode,
}) {
  final start = stdoutText.indexOf('{\n "createdAt":');
  if (start == -1) {
    throw StateError(
      'pana did not produce a machine-readable report for $name '
      '(exit code $exitCode).\n'
      '${_tail('stdout', stdoutText)}\n'
      '${_tail('stderr', stderrText)}',
    );
  }

  final reportJson =
      jsonDecode(stdoutText.substring(start)) as Map<String, dynamic>;
  final scores = reportJson['scores'] as Map<String, dynamic>;
  final report = reportJson['report'] as Map<String, dynamic>;
  final sectionsJson = report['sections'] as List<dynamic>;

  return PanaReport(
    grantedPoints: scores['grantedPoints'] as int,
    maxPoints: scores['maxPoints'] as int,
    sections: [
      for (final section in sectionsJson)
        PanaSection(
          title: (section as Map<String, dynamic>)['title'] as String,
          grantedPoints: section['grantedPoints'] as int,
          maxPoints: section['maxPoints'] as int,
          summary: section['summary'] as String? ?? '',
        ),
    ],
  );
}

bool _isExpectedTemporaryRegression({
  required String name,
  required PanaSection section,
}) {
  if (name != 'flutter_highlight') {
    return false;
  }

  if (section.title == 'Follow Dart file conventions') {
    return section.grantedPoints == 20 &&
        section.maxPoints == 30 &&
        section.summary.contains("defines `publish_to`");
  }

  if (section.title == 'Pass static analysis') {
    return section.grantedPoints == 30 &&
        section.maxPoints == 50 &&
        section.summary.contains("Publishable packages can't have 'path'");
  }

  return false;
}

String _tail(String label, String text) {
  if (text.trim().isEmpty) {
    return '$label: <empty>';
  }

  final lines = const LineSplitter().convert(text.trim());
  final tail = lines.skip(lines.length > 20 ? lines.length - 20 : 0).join('\n');
  return '$label:\n$tail';
}

int _leadingSpaceCount(String line) {
  var count = 0;
  while (count < line.length && line.codeUnitAt(count) == 0x20) {
    count++;
  }
  return count;
}

String _yamlSingleQuoted(String value) {
  final escaped = value.replaceAll("'", "''");
  return "'$escaped'";
}

String _join(String first, String second, [String? third, String? fourth]) {
  final parts = [
    first,
    second,
    if (third != null) third,
    if (fourth != null) fourth,
  ];
  return parts.join(Platform.pathSeparator);
}

final class PanaReport {
  PanaReport({
    required this.grantedPoints,
    required this.maxPoints,
    required this.sections,
  });

  final int grantedPoints;
  final int maxPoints;
  final List<PanaSection> sections;
}

final class PanaSection {
  PanaSection({
    required this.title,
    required this.grantedPoints,
    required this.maxPoints,
    required this.summary,
  });

  final String title;
  final int grantedPoints;
  final int maxPoints;
  final String summary;
}

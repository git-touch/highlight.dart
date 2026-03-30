import 'dart:io';

const Map<String, String> _packagePaths = <String, String>{
  'highlight': 'highlight',
  'flutter_highlight': 'flutter_highlight',
};

const Map<String, List<_ReleaseRef>> _knownReleases =
    <String, List<_ReleaseRef>>{
      'highlight': <_ReleaseRef>[
        _ReleaseRef(version: '0.1.0', ref: '4960805'),
        _ReleaseRef(version: '0.2.0', ref: 'ab848b6'),
        _ReleaseRef(version: '0.3.0', ref: '7f55bfe'),
        _ReleaseRef(version: '0.4.0', ref: '9a1123a'),
        _ReleaseRef(version: '0.4.1', ref: 'v0.4.1'),
        _ReleaseRef(version: '0.5.0', ref: 'bc74f4d'),
        _ReleaseRef(version: '0.6.0', ref: 'v0.6.0'),
        _ReleaseRef(version: '0.7.0', ref: 'v0.7.0'),
      ],
      'flutter_highlight': <_ReleaseRef>[
        _ReleaseRef(version: '0.2.0', ref: 'v0.2.0'),
        _ReleaseRef(version: '0.2.1', ref: 'c52fdb2'),
        _ReleaseRef(version: '0.3.0', ref: 'v0.3.0'),
        _ReleaseRef(version: '0.4.0', ref: 'v0.4.0'),
        _ReleaseRef(version: '0.5.0', ref: 'v0.5.0'),
        _ReleaseRef(version: '0.6.0', ref: 'v0.6.0'),
        _ReleaseRef(version: '0.7.0', ref: 'v0.7.0'),
      ],
    };

const List<String> _sectionOrder = <String>[
  'breaking',
  'feat',
  'fix',
  'perf',
  'refactor',
  'docs',
  'maintenance',
  'other',
];

const Map<String, String> _sectionTitles = <String, String>{
  'breaking': 'Breaking Changes',
  'feat': 'Features',
  'fix': 'Fixes',
  'perf': 'Performance',
  'refactor': 'Refactors',
  'docs': 'Documentation',
  'maintenance': 'Maintenance',
  'other': 'Other',
};

const String _usage =
    'Usage: dart run tool/generate_changelog.dart '
    '--package <highlight|flutter_highlight> [options]\n'
    '\n'
    'Single entry mode:\n'
    '  --version <version>  Required unless --history is used.\n'
    '  --from <git-ref>     Start ref. Defaults to the latest v* tag.\n'
    '  --to <git-ref>       End ref. Defaults to HEAD.\n'
    '\n'
    'History mode:\n'
    '  --history            Generate the full package changelog history.\n'
    '  --version <version>  Optional next/unreleased version added above history.\n'
    '  --from <git-ref>     Optional start ref for the next/unreleased version.\n'
    '  --to <git-ref>       Optional end ref for the next/unreleased version.\n'
    '\n'
    'Common:\n'
    '  --date <YYYY-MM-DD>  Release date used for --version output.\n'
    '                       Defaults to today.\n'
    '  --write              Write output into the package CHANGELOG.md.\n'
    '  --help               Show this help.\n';

Future<void> main(List<String> args) async {
  try {
    final options = _parseArgs(args);
    if (options.showHelp) {
      stdout.write(_usage);
      return;
    }

    final packageName = options.package!;
    final repoRoot = _repoRoot();
    final packagePath = _packagePaths[packageName]!;

    late final String output;
    if (options.history) {
      output = await _renderHistory(
        repoRoot: repoRoot,
        packageName: packageName,
        packagePath: packagePath,
        nextVersion: options.version,
        nextFromRef: options.fromRef,
        nextToRef: options.toRef ?? 'HEAD',
        nextDate: options.date!,
      );
    } else {
      final version = options.version!;
      final fromRef = options.fromRef ?? await _lastReleaseTag(repoRoot);
      final toRef = options.toRef ?? 'HEAD';
      final commits = await _loadCommits(
        repoRoot: repoRoot,
        packagePath: packagePath,
        fromRef: fromRef,
        toRef: toRef,
      );

      if (commits.isEmpty) {
        stderr.writeln(
          'No matching commits found for $packageName in range $fromRef..$toRef.',
        );
        exitCode = 1;
        return;
      }

      output = _renderEntry(
        version: version,
        fromRef: fromRef,
        toRef: toRef,
        commits: commits,
        generatedOn: options.date!,
      );
    }

    if (!options.write) {
      stdout.write(output);
      return;
    }

    final changelogPath = '$packagePath/CHANGELOG.md';
    File(_joinAll(<String>[repoRoot, changelogPath])).writeAsStringSync(output);
    stdout.writeln(
      options.history
          ? 'Rebuilt $changelogPath from git history.'
          : 'Updated $changelogPath.',
    );
  } on FormatException catch (error) {
    stderr.writeln(error.message);
    exitCode = 64;
  }
}

_Options _parseArgs(List<String> args) {
  String? package;
  String? version;
  String? fromRef;
  String? toRef;
  String? date;
  var history = false;
  var write = false;
  var showHelp = false;

  for (var index = 0; index < args.length; index++) {
    final arg = args[index];
    switch (arg) {
      case '--package':
        package = _readValue(args, ++index, arg);
      case '--version':
        version = _readValue(args, ++index, arg);
      case '--from':
        fromRef = _readValue(args, ++index, arg);
      case '--to':
        toRef = _readValue(args, ++index, arg);
      case '--date':
        date = _readValue(args, ++index, arg);
      case '--history':
        history = true;
      case '--write':
        write = true;
      case '--help':
        showHelp = true;
      default:
        throw FormatException('Unknown argument: $arg\n\n$_usage');
    }
  }

  if (showHelp) {
    return const _Options(showHelp: true);
  }

  if (package == null || !_packagePaths.containsKey(package)) {
    throw FormatException(
      '--package is required and must be one of: '
      '${_packagePaths.keys.join(', ')}\n\n$_usage',
    );
  }

  if (!history && (version == null || version.isEmpty)) {
    throw FormatException(
      '--version is required unless --history is used.\n\n$_usage',
    );
  }

  return _Options(
    package: package,
    version: version,
    fromRef: fromRef,
    toRef: toRef,
    date: date ?? DateTime.now().toIso8601String().split('T').first,
    history: history,
    write: write,
  );
}

String _readValue(List<String> args, int index, String option) {
  if (index >= args.length) {
    throw FormatException('Missing value for $option.\n\n$_usage');
  }
  return args[index];
}

String _repoRoot() {
  final result = Process.runSync('git', <String>[
    'rev-parse',
    '--show-toplevel',
  ]);
  if (result.exitCode != 0) {
    throw ProcessException(
      'git',
      <String>['rev-parse', '--show-toplevel'],
      '${result.stderr}'.trim(),
      result.exitCode,
    );
  }
  return '${result.stdout}'.trim();
}

Future<String> _lastReleaseTag(String repoRoot) async {
  final result = await Process.run('git', <String>[
    'describe',
    '--tags',
    '--abbrev=0',
    '--match',
    'v*',
  ], workingDirectory: repoRoot);
  if (result.exitCode != 0) {
    throw ProcessException(
      'git',
      <String>['describe', '--tags', '--abbrev=0', '--match', 'v*'],
      '${result.stderr}'.trim(),
      result.exitCode,
    );
  }
  return '${result.stdout}'.trim();
}

Future<List<_Commit>> _loadCommits({
  required String repoRoot,
  required String packagePath,
  required String? fromRef,
  required String toRef,
}) async {
  final revisionArg = fromRef == null ? toRef : '$fromRef..$toRef';
  final result = await Process.run('git', <String>[
    'log',
    '--reverse',
    '--format=%H%x1f%s%x1f%b%x1e',
    revisionArg,
    '--',
    packagePath,
  ], workingDirectory: repoRoot);
  if (result.exitCode != 0) {
    throw ProcessException(
      'git',
      <String>[
        'log',
        '--reverse',
        '--format=%H%x1f%s%x1f%b%x1e',
        revisionArg,
        '--',
        packagePath,
      ],
      '${result.stderr}'.trim(),
      result.exitCode,
    );
  }

  final raw = '${result.stdout}'.trim();
  if (raw.isEmpty) {
    return const <_Commit>[];
  }

  final commits = <_Commit>[];
  for (final record in raw.split('\x1e')) {
    final trimmed = record.trim();
    if (trimmed.isEmpty) continue;

    final parts = trimmed.split('\x1f');
    if (parts.length < 3) continue;

    final hash = parts[0].trim();
    final subject = parts[1].trim();
    final body = parts.sublist(2).join('\x1f').trim();

    final commit = _parseCommit(hash: hash, subject: subject, body: body);
    if (commit != null) {
      commits.add(commit);
    }
  }
  return commits;
}

_Commit? _parseCommit({
  required String hash,
  required String subject,
  required String body,
}) {
  if (subject.isEmpty ||
      subject.startsWith('Merge ') ||
      _releaseSubjectPattern.hasMatch(subject)) {
    return null;
  }

  final match = _conventionalPattern.firstMatch(subject);
  if (match == null) {
    return _Commit(
      hash: hash,
      type: 'other',
      scope: null,
      description: subject,
      breaking: _hasBreakingChange(body),
    );
  }

  final rawType = match.group(1)!.toLowerCase();
  final scope = match.group(2);
  final bang = match.group(3) == '!';
  final description = match.group(4)!.trim();
  final breaking = bang || _hasBreakingChange(body);

  return _Commit(
    hash: hash,
    type: breaking ? 'breaking' : _normalizeType(rawType),
    scope: scope,
    description: description,
    breaking: breaking,
  );
}

bool _hasBreakingChange(String body) =>
    RegExp(r'^BREAKING CHANGE:', multiLine: true).hasMatch(body);

String _normalizeType(String type) {
  switch (type) {
    case 'feat':
    case 'fix':
    case 'perf':
    case 'refactor':
    case 'docs':
      return type;
    case 'build':
    case 'chore':
    case 'ci':
    case 'style':
    case 'test':
    case 'improvement':
      return 'maintenance';
    default:
      return 'other';
  }
}

String _renderEntry({
  required String version,
  required String? fromRef,
  required String toRef,
  required List<_Commit> commits,
  required String generatedOn,
}) {
  final grouped = <String, List<_Commit>>{
    for (final key in _sectionOrder) key: <_Commit>[],
  };

  for (final commit in commits) {
    grouped[commit.type]!.add(commit);
  }

  final buffer = StringBuffer()
    ..writeln('## $version - $generatedOn')
    ..writeln()
    ..writeln(
      fromRef == null
          ? '_Generated from repository start to `$toRef`._'
          : '_Generated from `$fromRef..$toRef`._',
    )
    ..writeln();

  var renderedSectionCount = 0;
  for (final section in _sectionOrder) {
    final entries = grouped[section]!;
    if (entries.isEmpty) continue;

    renderedSectionCount++;
    buffer.writeln('### ${_sectionTitles[section]}');
    buffer.writeln();
    for (final entry in entries) {
      buffer.writeln(_renderBullet(entry));
    }
    buffer.writeln();
  }

  if (renderedSectionCount == 0) {
    buffer.writeln('- No user-facing changes in this range.');
    buffer.writeln();
  }

  return buffer.toString();
}

String _renderBullet(_Commit commit) {
  final scope = commit.scope == null ? '' : '**${commit.scope}:** ';
  return '- $scope${commit.description} (`${commit.shortHash}`)';
}

Future<String> _renderHistory({
  required String repoRoot,
  required String packageName,
  required String packagePath,
  required String? nextVersion,
  required String? nextFromRef,
  required String nextToRef,
  required String nextDate,
}) async {
  final releases = _knownReleases[packageName];
  if (releases == null || releases.isEmpty) {
    throw FormatException(
      'No built-in release history is configured for $packageName.',
    );
  }

  final entries = <String>[];

  if (nextVersion != null && nextVersion.isNotEmpty) {
    final currentFromRef = nextFromRef ?? releases.last.ref;
    final currentCommits = await _loadCommits(
      repoRoot: repoRoot,
      packagePath: packagePath,
      fromRef: currentFromRef,
      toRef: nextToRef,
    );
    if (currentCommits.isNotEmpty) {
      entries.add(
        _renderEntry(
          version: nextVersion,
          fromRef: currentFromRef,
          toRef: nextToRef,
          commits: currentCommits,
          generatedOn: nextDate,
        ),
      );
    }
  }

  String? previousRef;
  final historicalEntries = <String>[];
  for (final release in releases) {
    final commits = await _loadCommits(
      repoRoot: repoRoot,
      packagePath: packagePath,
      fromRef: previousRef,
      toRef: release.ref,
    );
    final date = await _resolveRefDate(repoRoot, release.ref);
    historicalEntries.add(
      _renderEntry(
        version: release.version,
        fromRef: previousRef,
        toRef: release.ref,
        commits: commits,
        generatedOn: date,
      ),
    );
    previousRef = release.ref;
  }

  final buffer = StringBuffer()
    ..writeln('# Changelog')
    ..writeln();
  for (final entry in <String>[...entries, ...historicalEntries.reversed]) {
    buffer.writeln(entry.trimRight());
    buffer.writeln();
  }
  return '${buffer.toString().trimRight()}\n';
}

Future<String> _resolveRefDate(String repoRoot, String ref) async {
  final result = await Process.run('git', <String>[
    'show',
    '-s',
    '--format=%cs',
    ref,
  ], workingDirectory: repoRoot);
  if (result.exitCode != 0) {
    throw ProcessException(
      'git',
      <String>['show', '-s', '--format=%cs', ref],
      '${result.stderr}'.trim(),
      result.exitCode,
    );
  }
  return '${result.stdout}'.trim();
}

String _joinAll(List<String> parts) => parts.join(Platform.pathSeparator);

final RegExp _conventionalPattern = RegExp(
  r'^([A-Za-z]+)(?:\(([^)]+)\))?(!)?: (.+)$',
);

final RegExp _releaseSubjectPattern = RegExp(
  r'^(?:[\w.-]+ )?v?\d+\.\d+\.\d+$',
  caseSensitive: false,
);

final class _Options {
  const _Options({
    this.package,
    this.version,
    this.fromRef,
    this.toRef,
    this.date,
    this.history = false,
    this.write = false,
    this.showHelp = false,
  });

  final String? package;
  final String? version;
  final String? fromRef;
  final String? toRef;
  final String? date;
  final bool history;
  final bool write;
  final bool showHelp;
}

final class _ReleaseRef {
  const _ReleaseRef({required this.version, required this.ref});

  final String version;
  final String ref;
}

final class _Commit {
  const _Commit({
    required this.hash,
    required this.type,
    required this.scope,
    required this.description,
    required this.breaking,
  });

  final String hash;
  final String type;
  final String? scope;
  final String description;
  final bool breaking;

  String get shortHash => hash.substring(0, 7);
}

import 'dart:io';

Future<void> main(List<String> args) async {
  try {
    var verify = true;

    for (final arg in args) {
      if (arg == '--no-verify') {
        verify = false;
        continue;
      }

      stderr.writeln(
        'Unknown argument: $arg\n'
        'Usage: dart run tool/generate.dart [--no-verify]',
      );
      exitCode = 64;
      return;
    }

    final toolRoot = File.fromUri(Platform.script).parent.path;
    final repoRoot = Directory(toolRoot).parent.path;

    await _runStep('Generate languages', Platform.resolvedExecutable, <String>[
      'run',
      'tool/generate_languages.dart',
      '--no-format',
    ], workingDirectory: repoRoot);
    await _runStep('Generate themes', Platform.resolvedExecutable, <String>[
      'run',
      'tool/generate_themes.dart',
      '--no-format',
    ], workingDirectory: repoRoot);
    await _runStep(
      'Format generated code',
      Platform.resolvedExecutable,
      <String>[
        'format',
        'highlight/lib/languages',
        'flutter_highlight/lib/themes',
      ],
      workingDirectory: repoRoot,
    );

    if (!verify) return;

    await _runStep(
      'Analyze highlight',
      Platform.resolvedExecutable,
      <String>['analyze'],
      workingDirectory: _joinAll(<String>[repoRoot, 'highlight']),
    );
    await _runStep(
      'Analyze flutter_highlight',
      'flutter',
      <String>['analyze'],
      workingDirectory: _joinAll(<String>[repoRoot, 'flutter_highlight']),
    );
    await _runStep(
      'Test highlight',
      Platform.resolvedExecutable,
      <String>['test', '-r', 'expanded'],
      workingDirectory: _joinAll(<String>[repoRoot, 'highlight']),
    );
  } on ProcessException catch (error) {
    stderr.writeln(error.message);
    exitCode = error.errorCode == 0 ? 1 : error.errorCode;
  }
}

Future<void> _runStep(
  String label,
  String executable,
  List<String> args, {
  required String workingDirectory,
}) async {
  stdout.writeln('==> $label');
  final process = await Process.start(
    executable,
    args,
    workingDirectory: workingDirectory,
    mode: ProcessStartMode.inheritStdio,
  );
  final code = await process.exitCode;
  if (code == 0) return;

  throw ProcessException(
    executable,
    args,
    '$label failed with exit code $code',
    code,
  );
}

String _joinAll(List<String> parts) {
  if (parts.isEmpty) {
    return '';
  }

  var result = parts.first;
  for (final part in parts.skip(1)) {
    if (result.endsWith(Platform.pathSeparator)) {
      result = '$result$part';
      continue;
    }
    result = '$result${Platform.pathSeparator}$part';
  }
  return result;
}

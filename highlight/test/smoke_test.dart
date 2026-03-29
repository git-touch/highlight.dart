import 'package:test/test.dart';
import 'package:highlight/highlight.dart';

void main() {
  ensureInitialized();

  test('hljs has languages registered', () {
    expect(hljs.listLanguages().length, greaterThan(100));
  });

  test('highlight JSON', () {
    const code = '{"key": "value", "num": 42, "bool": true}';
    final result = hljs.highlight(code, language: 'json');
    expect(result.language, equals('json'));
    expect(result.value, isNotEmpty);
    if (result.errorRaised != null) {
      fail('Error raised: ${result.errorRaised}');
    }
    expect(result.value, contains('hljs-'));
  });

  test('highlight Python', () {
    const code = 'def hello():\n    print("hello world")';
    final result = hljs.highlight(code, language: 'python');
    expect(result.language, equals('python'));
    expect(result.value, contains('hljs-keyword'));
  });

  test('highlight JavaScript', () {
    const code = 'function greet(name) {\n  return "Hello " + name;\n}';
    final result = hljs.highlight(code, language: 'javascript');
    expect(result.language, equals('javascript'));
    if (result.errorRaised != null) {
      fail('JS error: ${result.errorRaised}');
    }
    expect(result.value, contains('hljs-keyword'));
  });

  test('highlight Dart', () {
    const code = 'void main() {\n  print("Hello, Dart!");\n}';
    final result = hljs.highlight(code, language: 'dart');
    expect(result.language, equals('dart'));
    expect(result.value, contains('hljs-'));
  });

  test('highlight empty string', () {
    final result = hljs.highlight('', language: 'json');
    expect(result.value, equals(''));
  });

  test('unknown language throws ArgumentError', () {
    expect(
      () => hljs.highlight('code', language: 'nonexistent_language_xyz'),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('highlightAuto detects language', () {
    const code = 'def hello():\n    print("hello world")\n    return 42';
    final result = hljs.highlightAuto(code);
    expect(result.language, isNotEmpty);
    expect(result.relevance, greaterThan(0));
  });
}

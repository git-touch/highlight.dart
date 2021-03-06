/// Extends builtin String.substring function
///
/// RangeError: Value not in range
String substring(String input, int startIndex, [int? endIndex]) {
  endIndex ??= input.length;

  if (startIndex > endIndex) {
    var tmp = startIndex;
    startIndex = endIndex;
    endIndex = tmp;
  }

  if (startIndex < 0 || startIndex > input.length) {
    startIndex = 0;
  }

  if (endIndex < 0 || endIndex > input.length) {
    endIndex = input.length;
  }

  return input.substring(startIndex, endIndex);
}

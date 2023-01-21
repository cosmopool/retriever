extension MapToString on Map {
  /// Return a indented string representation of a Map instance
  /// TODO: complete docstring
  String toPrettyString(
    String indent, [
    String? highlightKey,
  ]) {
    final m = this;
    var result = StringBuffer();
    final minorIndent = '$indent    ';
    final indentWithArrow = '$indent--> ';

    result.write('{\n');
    bool first = true;
    m.forEach((Object? k, Object? v) {
      final showHighlight = highlightKey == k;
      final highlight = _makeHighlight(highlightKey!, '^');

      if (!first) {
        result.write(',\n');
      }
      first = false;

      result.write(showHighlight ? indentWithArrow : minorIndent);
      result.write(k);
      result.write(': ');
      result.write(v);
      if (showHighlight) result.write('\n$minorIndent$highlight');
    });
    result.write('\n$indent}');

    return result.toString();
  }

  /// TODO add docstring
  static String _makeHighlight(String str, String char) {
    String temp = '';

    for (var i = 0; i < str.length; i++) {
      temp += char;
    }

    return temp;
  }
}

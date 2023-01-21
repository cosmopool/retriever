import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return String '
      'WHEN value is a String', () async {
    expect(Retriever.getMaybeString(kString, testMapStub), isA<String>());
  });

  test(
      'SHOULD return "null" as String '
      'WHEN value is null', () async {
    expect(
      Retriever.getMaybeString(kNull, testMapStub),
      isNull,
    );
  });

  test(
      'SHOULD return "1" as String '
      'WHEN value is 1', () async {
    expect(
      Retriever.getMaybeString(kInt, testMapStub),
      isNull,
    );
  });

  test(
      'SHOULD return "1.0" as String '
      'WHEN value is 1.0', () async {
    expect(
      Retriever.getMaybeString(kDouble, testMapStub),
      isNull,
    );
  });

  test(
      'SHOULD return "{key: value}" as String '
      'WHEN value is {"key": "value"}', () async {
    expect(
      Retriever.getMaybeString(kMap, testMapStub),
      isNull,
    );
  });

  test(
      'SHOULD return "[1, 2]" as String '
      'WHEN value is [1, 2]', () async {
    expect(
      Retriever.getMaybeString(kList, testMapStub),
      isNull,
    );
  });

  test(
      'SHOULD return "true" '
      'WHEN value is true', () async {
    expect(
      Retriever.getMaybeString(kBool, testMapStub),
      isNull,
    );
  });

  test(
      'SHOULD return "{1, 2}" as String '
      'WHEN value is {1, 2}', () async {
    expect(
      Retriever.getMaybeString(kSet, testMapStub),
      isNull,
    );
  });

  test(
      'SHOULD return a String '
      'WHEN value is a string Date', () async {
    expect(
      Retriever.getMaybeString(kStringDate, testMapStub),
      isA<String>(),
    );
  });

  test(
      'SHOULD return "2023-01-01 00:00:00.000" as String '
      'WHEN value is a DateTime(2023)', () async {
    expect(
      Retriever.getMaybeString(kDateTime, testMapStub),
      isNull,
    );
  });
}

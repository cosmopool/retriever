import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return String '
      'WHEN value is a String', () async {
    expect(Retriever.getForceString(kString, testMapStub), isA<String>());
  });

  test(
      'SHOULD return "null" as String '
      'WHEN value is null', () async {
    expect(
      Retriever.getForceString(kNull, testMapStub),
      "null",
    );
  });

  test(
      'SHOULD return "1" as String '
      'WHEN value is 1', () async {
    expect(
      Retriever.getForceString(kInt, testMapStub),
      "1",
    );
  });

  test(
      'SHOULD return "1.0" as String '
      'WHEN value is 1.0', () async {
    expect(
      Retriever.getForceString(kDouble, testMapStub),
      "1.0",
    );
  });

  test(
      'SHOULD return "{key: value}" as String '
      'WHEN value is {"key": "value"}', () async {
    expect(
      Retriever.getForceString(kMap, testMapStub),
      '{key: value}',
    );
  });

  test(
      'SHOULD return "[1, 2]" as String '
      'WHEN value is [1, 2]', () async {
    expect(
      Retriever.getForceString(kList, testMapStub),
      "[1, 2]",
    );
  });

  test(
      'SHOULD return "true" '
      'WHEN value is true', () async {
    expect(
      Retriever.getForceString(kBool, testMapStub),
      "true",
    );
  });

  test(
      'SHOULD return "{1, 2}" as String '
      'WHEN value is {1, 2}', () async {
    expect(
      Retriever.getForceString(kSet, testMapStub),
      "{1, 2}",
    );
  });

  test(
      'SHOULD return a String '
      'WHEN value is a string Date', () async {
    expect(
      Retriever.getForceString(kStringDate, testMapStub),
      isA<String>(),
    );
  });

  test(
      'SHOULD return "2023-01-01 00:00:00.000" as String '
      'WHEN value is a DateTime(2023)', () async {
    expect(
      Retriever.getForceString(kDateTime, testMapStub),
      '2023-01-01 00:00:00.000',
    );
  });
}

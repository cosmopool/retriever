import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return null '
      'WHEN value is a String', () async {
    expect(Retriever.getMaybeInt(kString, testMapStub), isNull);
  });

  test(
      'SHOULD return "null" as String '
      'WHEN value is null', () async {
    expect(Retriever.getMaybeInt(kNull, testMapStub), isNull);
  });

  test(
      'SHOULD return int '
      'WHEN value is int', () async {
    expect(Retriever.getMaybeInt(kInt, testMapStub), isA<int>());
  });

  test(
      'SHOULD return null '
      'WHEN value is double', () async {
    expect(Retriever.getMaybeInt(kDouble, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {"key": "value"}', () async {
    expect(Retriever.getMaybeInt(kMap, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is [1, 2]', () async {
    expect(Retriever.getMaybeInt(kList, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is true', () async {
    expect(Retriever.getMaybeInt(kBool, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {1, 2}', () async {
    expect(Retriever.getMaybeInt(kSet, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a string Date', () async {
    expect(Retriever.getMaybeInt(kStringDate, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a DateTime(2023)', () async {
    expect(Retriever.getMaybeInt(kDateTime, testMapStub), isNull);
  });
}

import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return null '
      'WHEN value is a String', () {
    expect(Retriever.getMaybeInt(kString, testMapStub), isNull);
  });

  test(
      'SHOULD return "null" as String '
      'WHEN value is null', () {
    expect(Retriever.getMaybeInt(kNull, testMapStub), isNull);
  });

  test(
      'SHOULD return int '
      'WHEN value is int', () {
    expect(Retriever.getMaybeInt(kInt, testMapStub), isA<int>());
  });

  test(
      'SHOULD return null '
      'WHEN value is double', () {
    expect(Retriever.getMaybeInt(kDouble, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {"key": "value"}', () {
    expect(Retriever.getMaybeInt(kMap, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is [1, 2]', () {
    expect(Retriever.getMaybeInt(kList, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is true', () {
    expect(Retriever.getMaybeInt(kBool, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {1, 2}', () {
    expect(Retriever.getMaybeInt(kSet, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a string Date', () {
    expect(Retriever.getMaybeInt(kStringDate, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a DateTime(2023)', () {
    expect(Retriever.getMaybeInt(kDateTime, testMapStub), isNull);
  });
}

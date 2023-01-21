import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return String '
      'WHEN value is a String', () {
    expect(Retriever.getMaybeString(kString, testMapStub), isA<String>());
  });

  test(
      'SHOULD return null '
      'WHEN value is null', () {
    expect(Retriever.getMaybeString(kNull, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is 1', () {
    expect(Retriever.getMaybeString(kInt, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is 1.0', () {
    expect(Retriever.getMaybeString(kDouble, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {"key": "value"}', () {
    expect(Retriever.getMaybeString(kMap, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is [1, 2]', () {
    expect(Retriever.getMaybeString(kList, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is true', () {
    expect(Retriever.getMaybeString(kBool, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {1, 2}', () {
    expect(Retriever.getMaybeString(kSet, testMapStub), isNull);
  });

  test(
      'SHOULD return a String '
      'WHEN value is a string Date', () {
    expect(Retriever.getMaybeString(kStringDate, testMapStub), isA<String>());
  });

  test(
      'SHOULD return null '
      'WHEN value is a DateTime(2023)', () {
    expect(Retriever.getMaybeString(kDateTime, testMapStub), isNull);
  });
}

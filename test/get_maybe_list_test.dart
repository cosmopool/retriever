import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return null '
      'WHEN value is a String', () {
    expect(Retriever.getMaybeList(kString, testMapStub), isNull);
  });

  test(
      'SHOULD return "null" as String '
      'WHEN value is null', () {
    expect(Retriever.getMaybeList(kNull, testMapStub), isNull);
  });

  test(
      'SHOULD return int '
      'WHEN value is int', () {
    expect(Retriever.getMaybeList(kInt, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is double', () {
    expect(Retriever.getMaybeList(kDouble, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {"key": "value"}', () {
    expect(Retriever.getMaybeList(kMap, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is true', () {
    expect(Retriever.getMaybeList(kBool, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {1, 2}', () {
    expect(Retriever.getMaybeList(kSet, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a string Date', () {
    expect(Retriever.getMaybeList(kStringDate, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a DateTime(2023)', () {
    expect(Retriever.getMaybeList(kDateTime, testMapStub), isNull);
  });

  test(
      'SHOULD return List<int> '
      'WHEN value is [1, 2]', () {
    expect(Retriever.getMaybeList<int>(kList, testMapStub), isA<List<int>>());
  });

  test(
      'SHOULD return null '
      'WHEN value is <int>[] and ask for <String>[]', () {
    expect(Retriever.getMaybeList<String>(kList, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is <int>[] and ask for <String>[]', () {
    expect(Retriever.getMaybeList<bool>(kList, testMapStub), isNull);
  });
}

import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return null '
      'WHEN value is a String', () {
    expect(Retriever.getMaybeDouble(kString, testMapStub), isNull);
  });

  test(
      'SHOULD return "null" as String '
      'WHEN value is null', () {
    expect(Retriever.getMaybeDouble(kNull, testMapStub), isNull);
  });

  test(
      'SHOULD return double '
      'WHEN value is int', () {
    expect(Retriever.getMaybeDouble(kInt, testMapStub), isA<double>());
  });

  test(
      'SHOULD return double '
      'WHEN value is double', () {
    expect(Retriever.getMaybeDouble(kInt, testMapStub), isA<double>());
  });

  test(
      'SHOULD return null '
      'WHEN value is {"key": "value"}', () {
    expect(Retriever.getMaybeDouble(kMap, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is [1, 2]', () {
    expect(Retriever.getMaybeDouble(kList, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is true', () {
    expect(Retriever.getMaybeDouble(kBool, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {1, 2}', () {
    expect(Retriever.getMaybeDouble(kSet, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a string Date', () {
    expect(Retriever.getMaybeDouble(kStringDate, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a DateTime(2023)', () {
    expect(Retriever.getMaybeDouble(kDateTime, testMapStub), isNull);
  });
}

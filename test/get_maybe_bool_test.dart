import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return String '
      'WHEN value is a String', () {
    expect(Retriever.getMaybeBool(kString, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is null', () {
    expect(Retriever.getMaybeBool(kNull, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is 1', () {
    expect(Retriever.getMaybeBool(kInt, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is 1.0', () {
    expect(Retriever.getMaybeBool(kDouble, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {"key": "value"}', () {
    expect(Retriever.getMaybeBool(kMap, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is [1, 2]', () {
    expect(Retriever.getMaybeBool(kList, testMapStub), isNull);
  });

  test(
      'SHOULD return bool '
      'WHEN value is true', () {
    expect(Retriever.getMaybeBool(kBool, testMapStub), isA<bool>());
  });

  test(
      'SHOULD return null '
      'WHEN value is {1, 2}', () {
    expect(Retriever.getMaybeBool(kSet, testMapStub), isNull);
  });

  test(
      'SHOULD return a null '
      'WHEN value is a string Date', () {
    expect(Retriever.getMaybeBool(kStringDate, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is a DateTime(2023)', () {
    expect(Retriever.getMaybeBool(kDateTime, testMapStub), isNull);
  });
}

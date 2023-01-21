import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return null '
      'WHEN value is a String', () {
    expect(Retriever.getMaybeDate(kString, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is null', () {
    expect(Retriever.getMaybeDate(kNull, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is 1', () {
    expect(Retriever.getMaybeDate(kInt, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is 1.0', () {
    expect(Retriever.getMaybeDate(kDouble, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {"key": "value"}', () {
    expect(Retriever.getMaybeDate(kMap, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is [1, 2]', () {
    expect(Retriever.getMaybeDate(kList, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is true', () {
    expect(Retriever.getMaybeDate(kBool, testMapStub), isNull);
  });

  test(
      'SHOULD return null '
      'WHEN value is {1, 2}', () {
    expect(Retriever.getMaybeDate(kSet, testMapStub), isNull);
  });

  test(
      'SHOULD return a DateTime '
      'WHEN value is a string Date', () {
    expect(Retriever.getMaybeDate(kStringDate, testMapStub), isA<DateTime>());
  });

  test(
      'SHOULD return a DateTime '
      'WHEN value is a DateTime(2023)', () {
    expect(Retriever.getMaybeDate(kDateTime, testMapStub), isA<DateTime>());
  });
}

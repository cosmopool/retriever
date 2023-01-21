import 'package:retriever/src/failures.dart';
import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD throw error '
      'WHEN value is any String', () {
    expect(
      () => Retriever.getMap(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is null', () {
    expect(
      () => Retriever.getMap(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any int', () {
    expect(
      () => Retriever.getMap(kInt, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any double', () {
    expect(
      () => Retriever.getMap(kDouble, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return Map '
      'WHEN value is any Map', () {
    expect(Retriever.getMap(kMap, testMapStub), isA<Map>());
  });

  test(
      'SHOULD throw error '
      'WHEN value is any List', () {
    expect(
      () => Retriever.getMap(kList, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any bool', () {
    expect(
      () => Retriever.getMap(kBool, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Set', () {
    expect(
      () => Retriever.getMap(kSet, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any string Date', () {
    expect(
      () => Retriever.getMap(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any DateTime', () {
    expect(
      () => Retriever.getMap(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });
}

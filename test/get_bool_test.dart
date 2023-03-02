import 'package:retriever/src/failures.dart';
import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return bool '
      'WHEN value is any bool', () {
    expect(Retriever.getBool(kBool, testMapStub), isA<bool>());
  });

  test(
      'SHOULD throw error '
      'WHEN value is null', () {
    expect(
      () => Retriever.getBool(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any int', () {
    expect(
      () => Retriever.getBool(kInt, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any double', () {
    expect(
      () => Retriever.getBool(kDouble, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Map', () {
    expect(
      () => Retriever.getBool(kMap, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any List', () {
    expect(
      () => Retriever.getBool(kList, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any String', () {
    expect(
      () => Retriever.getBool(kString, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Set', () {
    expect(
      () => Retriever.getBool(kSet, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any DateTime', () {
    expect(
      () => Retriever.getBool(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });
}

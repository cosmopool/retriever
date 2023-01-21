import 'package:retriever/src/failures.dart';
import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD throw error '
      'WHEN value is any String', () {
    expect(
      () => Retriever.getDouble(kString, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is null', () {
    expect(
      () => Retriever.getDouble(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return double '
      'WHEN value is any int', () {
    expect(Retriever.getDouble(kInt, testMapStub), isA<double>());
  });

  test(
      'SHOULD return double '
      'WHEN value is any double', () {
    expect(Retriever.getDouble(kDouble, testMapStub), isA<double>());
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Map', () {
    expect(
      () => Retriever.getDouble(kMap, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any List', () {
    expect(
      () => Retriever.getDouble(kList, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any bool', () {
    expect(
      () => Retriever.getDouble(kBool, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Set', () {
    expect(
      () => Retriever.getDouble(kSet, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any string Date', () {
    expect(
      () => Retriever.getDouble(kStringDate, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any DateTime', () {
    expect(
      () => Retriever.getDouble(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });
}

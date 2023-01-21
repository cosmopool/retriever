import 'package:retriever/src/failures.dart';
import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD throw error '
      'WHEN value is any String', () {
    expect(
      () => Retriever.getDate(kString, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is null', () {
    expect(
      () => Retriever.getDate(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any int', () {
    expect(
      () => Retriever.getDate(kInt, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any double', () {
    expect(
      () => Retriever.getDate(kDouble, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Map', () {
    expect(
      () => Retriever.getDate(kMap, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any List', () {
    expect(
      () => Retriever.getDate(kList, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any bool', () {
    expect(
      () => Retriever.getDate(kBool, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Set', () {
    expect(
      () => Retriever.getDate(kSet, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return a Date '
      'WHEN value is any string Date', () {
    expect(Retriever.getDate(kStringDate, testMapStub), isA<DateTime>());
  });

  test(
      'SHOULD return Date '
      'WHEN value is any DateTime', () {
    expect(Retriever.getDate(kDateTime, testMapStub), isA<DateTime>());
  });
}

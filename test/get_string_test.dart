import 'package:retriever/src/failures.dart';
import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD return String '
      'WHEN value is any String', () async {
    expect(Retriever.getString(kString, testMapStub), isA<String>());
  });

  test(
      'SHOULD throw error '
      'WHEN value is null', () async {
    expect(
      () => Retriever.getString(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any int', () async {
    expect(
      () => Retriever.getString(kInt, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any double', () async {
    expect(
      () => Retriever.getString(kDouble, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Map', () async {
    expect(
      () => Retriever.getString(kMap, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any List', () async {
    expect(
      () => Retriever.getString(kList, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any bool', () async {
    expect(
      () => Retriever.getString(kBool, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Set', () async {
    expect(
      () => Retriever.getString(kSet, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return a String '
      'WHEN value is any string Date', () async {
    expect(
      Retriever.getString(kStringDate, testMapStub),
      isA<String>(),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any DateTime', () async {
    expect(
      () => Retriever.getString(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });
}

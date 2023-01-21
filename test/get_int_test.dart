import 'package:retriever/src/failures.dart';
import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD throw error '
      'WHEN value is any String', () async {
    expect(
      () => Retriever.getInt(kString, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is null', () async {
    expect(
      () => Retriever.getInt(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return int '
      'WHEN value is any int', () async {
    expect(Retriever.getInt(kInt, testMapStub), isA<int>());
  });

  test(
      'SHOULD throw error '
      'WHEN value is any double', () async {
    expect(
      () => Retriever.getInt(kDouble, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Map', () async {
    expect(
      () => Retriever.getInt(kMap, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any List', () async {
    expect(
      () => Retriever.getInt(kList, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any bool', () async {
    expect(
      () => Retriever.getInt(kBool, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Set', () async {
    expect(
      () => Retriever.getInt(kSet, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return a String '
      'WHEN value is any string Date', () async {
    expect(
      () => Retriever.getInt(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any DateTime', () async {
    expect(
      () => Retriever.getInt(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });
}

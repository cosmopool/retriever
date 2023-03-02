import 'package:retriever/src/failures.dart';
import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD throw error '
      'WHEN value is any String', () {
    expect(
      () => Retriever.getList(kString, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is null', () {
    expect(
      () => Retriever.getList(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any int', () {
    expect(
      () => Retriever.getList(kInt, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any double', () {
    expect(
      () => Retriever.getList(kDouble, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Map', () {
    expect(
      () => Retriever.getList(kMap, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return a list '
      'WHEN value is any List', () {
    expect(
      Retriever.getList(kList, testMapStub),
      isA<List>(),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any bool', () {
    expect(
      () => Retriever.getList(kBool, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Set', () {
    expect(
      () => Retriever.getList(kSet, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return a String '
      'WHEN value is any string Date', () {
    expect(
      () => Retriever.getList(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any DateTime', () {
    expect(
      () => Retriever.getList(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return List<String> '
      'WHEN value is List<String>', () {
    final map = {
      kList: ['a', '1'],
    };
    expect(
      Retriever.getList<String>(kList, map),
      isA<List<String>>(),
    );
  });

  test(
      'SHOULD return List<double> '
      'WHEN value is List<double>', () {
    final map = {
      kList: [1.0, 2.0],
    };
    expect(
      Retriever.getList<double>(kList, map),
      isA<List<double>>(),
    );
  });

  test(
      'SHOULD return List<bool> '
      'WHEN value is List<bool>', () {
    final map = {
      kList: [true, false],
    };
    expect(
      Retriever.getList<bool>(kList, map),
      isA<List<bool>>(),
    );
  });

  test(
      'SHOULD return List '
      'WHEN value is List<dynamic>', () {
    final map = {
      kList: <dynamic>[1, false, 'a'],
    };
    expect(
      Retriever.getList(kList, map),
      isA<List>(),
    );
  });
}

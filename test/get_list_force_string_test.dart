import 'package:retriever/src/failures.dart';
import 'package:retriever/src/retriever_base.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test(
      'SHOULD throw error '
      'WHEN value is any String', () {
    expect(
      () => Retriever.getListForceString(kString, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is null', () {
    expect(
      () => Retriever.getListForceString(kNull, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any int', () {
    expect(
      () => Retriever.getListForceString(kInt, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any double', () {
    expect(
      () => Retriever.getListForceString(kDouble, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Map', () {
    expect(
      () => Retriever.getListForceString(kMap, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any bool', () {
    expect(
      () => Retriever.getListForceString(kBool, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any Set', () {
    expect(
      () => Retriever.getListForceString(kSet, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return a String '
      'WHEN value is any string Date', () {
    expect(
      () => Retriever.getListForceString(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD throw error '
      'WHEN value is any DateTime', () {
    expect(
      () => Retriever.getListForceString(kDateTime, testMapStub),
      throwsA(isA<RetrieverFormatError>()),
    );
  });

  test(
      'SHOULD return List<String> '
      'WHEN value is any List<int>', () {
    expect(
      Retriever.getListForceString(kList, testMapStub),
      isA<List<String>>(),
    );
  });

  test(
      'SHOULD return List<String> '
      'WHEN value is List<String>', () {
    final map = {
      kList: ['a', '1'],
    };
    expect(
      Retriever.getListForceString(kList, map),
      isA<List<String>>(),
    );
  });

  test(
      'SHOULD return List<String> '
      'WHEN value is List<double>', () {
    final map = {
      kList: [1.0, 2.0],
    };
    expect(
      Retriever.getListForceString(kList, map),
      isA<List<String>>(),
    );
  });

  test(
      'SHOULD return List<String> '
      'WHEN value is List<bool>', () {
    final map = {
      kList: [true, false],
    };
    expect(
      Retriever.getListForceString(kList, map),
      isA<List<String>>(),
    );
  });

  test(
      'SHOULD return List<String> '
      'WHEN value is List<dynamic>', () {
    final map = {
      kList: <dynamic>[1, false, 'a'],
    };
    expect(
      Retriever.getListForceString(kList, map),
      isA<List<String>>(),
    );
  });
}

import 'package:retriever/retriever.dart';
import 'package:test/test.dart';

import 'map_stub.dart';

void main() {
  test('Test if Retriever class is accessible via main module', () {
    final getResult = Retriever.getString(kString, testMapStub);
    expect(getResult, isA<String>());
  });
}

import 'failures.dart';

// TODO: Put public facing types in this file.

/// TODO; add docstring
class Retriever {
  /// To retrieve a value from a map, only if it's a String.
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static String getString(dynamic key, Map map) {
    final val = map[key];
    if (val.runtimeType == String) return val;

    throw RetrieverFormatError(
      key: key.toString(),
      type: String,
      found: val,
      foundType: val.runtimeType,
      map: map,
    );
  }
}

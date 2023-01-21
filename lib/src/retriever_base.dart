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

  /// Returns [key] from [map] as a String
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static String getForceString(dynamic key, Map map) => map[key].toString();

  /// To retrieve a value from a map.
  /// Returns the value if it's a String and null otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static String? getMaybeString(dynamic key, Map map) {
    final val = map[key];
    if (val.runtimeType != String) return null;
    return val;
  }

  /// To retrieve a value from a map, only if it's an Integer.
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static int getInt(dynamic key, Map map) {
    final val = map[key];
    try {
      return int.parse(val.toString());
    } catch (e) {
      throw RetrieverFormatError(
        key: key.toString(),
        type: 'Integer',
        found: val,
        foundType: val.runtimeType,
        map: map,
      );
    }
  }

  /// To retrieve a value from a map.
  /// Returns the value if it's a Integer and null otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static int? getMaybeInt(dynamic key, Map map) {
    final val = map[key];
    if (val.runtimeType != int) return null;
    return val;
  }
}

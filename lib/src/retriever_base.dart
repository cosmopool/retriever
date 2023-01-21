import 'failures.dart';

/// To safely and easily retrieve values from a map.
class Retriever {
  /// To retrieve a value from a map, only if it's a String.
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static String getString(dynamic key, Map map) {
    final val = map[key];
    if (val is String) return val;

    throw RetrieverFormatError(
      key: key.toString(),
      type: String,
      found: val,
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
    if (val is String) return val;
    return null;
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
    if (val is int) return val;
    return null;
  }

  /// To retrieve a value from a map, only if it's Double parsable number/string.
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static double getDouble(dynamic key, Map map) {
    final val = map[key];
    try {
      return double.parse(map[key].toString());
    } catch (e) {
      throw RetrieverFormatError(
        key: key.toString(),
        type: 'Float/Double',
        found: val,
        map: map,
      );
    }
  }

  /// To retrieve a value from a map.
  /// Returns the value if it's a Double and null otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static double? getMaybeDouble(dynamic key, Map map) {
    final val = map[key];
    return double.tryParse(val.toString());
  }

  /// To retrieve a value from a map, only if it's a parsable string Date.
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static DateTime getDate(dynamic key, Map map) {
    final val = map[key];
    try {
      return DateTime.parse(val.toString());
    } catch (e) {
      throw RetrieverFormatError(
        key: key.toString(),
        type: 'date',
        found: val,
        map: map,
      );
    }
  }

  /// To retrieve a value from a map.
  /// Returns the value if it's a string Date and null otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static DateTime? getMaybeDate(dynamic key, Map map) {
    final val = map[key];
    return DateTime.tryParse(val.toString());
  }

  /// To retrieve a value from a map, only if it's a Map.
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static Map getMap(dynamic key, Map map) {
    final val = map[key];
    if (val is Map) return val;

    throw RetrieverFormatError(
      key: key.toString(),
      type: 'map/json',
      found: val,
      map: map,
    );
  }
}

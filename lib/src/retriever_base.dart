import 'failures.dart';

/// To safely and easily retrieve values from a map.
class Retriever {
  static RetrieverFormatError formatError(
    dynamic key,
    dynamic type,
    dynamic val,
    Map map,
  ) {
    return RetrieverFormatError(
      key: key,
      requiredType: type.toString(),
      foundValue: val,
      map: map,
    );
  }

  /// To retrieve a value from a map, only if it's a String.
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static String getString(dynamic key, Map map) {
    final val = map[key];
    if (val is String) return val;

    throw formatError(key, String, val, map);
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
      throw formatError(key, int, val, map);
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
      throw formatError(key, double, val, map);
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
      throw formatError(key, DateTime, val, map);
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

    throw formatError(key, Map, val, map);
  }

  static T get<T>(dynamic key, Map map) {
    final val = map[key];
    if (val is T) return val;
    throw formatError(key, T, val, map);
  }

  /// To retrieve a value from a map, only if it's a List<T>.
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static List<T> getList<T>(dynamic key, Map map) {
    final val = map[key];

    final error = formatError(key, List<T>, val, map);
    if (val is! List) throw error;

    try {
      return toList<T>(val);
    } catch (e) {
      throw error;
    }
  }

  /// To retrieve a value from a map, only if it's a List and force all elements to String
  /// Throw an error otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static List<String> getListForceString(dynamic key, Map map) {
    final val = map[key];

    final error = formatError(key, List<String>, val, map);
    if (val is! List) throw error;

    try {
      return val.map((e) => e.toString()).toList();
    } catch (e) {
      throw error;
    }
  }

  static List<T> toList<T>(List list) {
    final finalList = <T>[];
    for (var item in list) {
      finalList.add(item as T);
    }
    return finalList;
  }

  /// To retrieve a value from a map.
  /// Returns the value if it's a List and null otherwise.
  ///
  /// [key] can be any dynamic value
  /// [map] can be any Map<dynamic, dynamic>
  static List<T>? getMaybeList<T>(dynamic key, Map map) {
    final val = map[key];
    if (val is! List) return null;

    try {
      return toList<T>(val);
    } catch (e) {
      return null;
    }
  }
}

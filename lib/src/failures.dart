import 'package:retriever/src/utils/extensions/map_extensions.dart';

/// Base exception from Retriever package
///
/// This exception prints lots of useful and user friendly information
/// about the error.
class RetrieverFormatError implements Exception {
  final dynamic key;
  final dynamic requiredType;
  final dynamic foundValue;
  final Map map;

  RetrieverFormatError({
    required this.key,
    required this.requiredType,
    required this.foundValue,
    required this.map,
  });

  static const indent = '                  ';

  @override
  String toString() =>
      'RetrieverFormatError: Found invalid format when parsing key.\n'
      '         Key: "$key"\n'
      '         Expected: "$requiredType"\n'
      '         Found: "${foundValue.runtimeType}", value: "$foundValue". \n'
      '         Object: "${map.toPrettyString(indent, key)}"\n\n\n';
}

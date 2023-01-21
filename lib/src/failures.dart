import 'package:retriever/src/utils/extensions/map_extensions.dart';

/// TODO add docstring
class RetrieverFormatError implements Exception {
  final String key;
  final dynamic type;
  final dynamic found;
  final Map map;

  RetrieverFormatError({
    required this.key,
    required this.type,
    required this.found,
    required this.map,
  });

  static const indent = '                  ';

  @override
  String toString() =>
      'RetrieverFormatError: Found invalid format when parsing key.\n'
      '         Key: "$key"\n'
      '         Expected: "$type"\n'
      '         Found: "${found.runtimeType}", value: "$found". \n'
      '         Object: "${map.toPrettyString(indent, key)}"\n\n\n';
}

import 'package:wkt_parser/wkt-parser-dart.dart' as wkt;
import '../test/data/wkt_strings.dart' as test_data;
import 'dart:convert';

void main() {
  var txt = test_data.testData[0];
  var obj = wkt.parse(txt);
  var json = jsonEncode(obj);
  print(json);
}

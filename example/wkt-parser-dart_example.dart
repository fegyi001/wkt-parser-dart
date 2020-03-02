import 'package:wkt_parser/wkt-parser-dart.dart';
import '../test/data/wkt_strings.dart' as test_data;

void main() {
  var txt = test_data.testData[0];
  print(txt);
  var output = Parser.parseString(txt);
  print(output);
}

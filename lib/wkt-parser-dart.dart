/// mgrs library.
library wkt_parser;

import 'package:wkt_parser/src/parser.dart';
import 'package:wkt_parser/src/process.dart' as process;
import 'package:wkt_parser/src/clean_wkt.dart' as clean_wkt;

export 'package:wkt_parser/src/parser.dart';
// export 'package:wkt_parser/src/process.dart';

Map<dynamic, dynamic> parse(String wkt) {
  var lisp = Parser.parseString(wkt);
  var type = lisp.removeAt(0);
  var name = lisp.removeAt(0);
  lisp.insert(0, ['name', name]);
  lisp.insert(0, ['type', type]);
  var obj = {};
  process.sExpr(lisp, obj);
  clean_wkt.cleanWKT(obj);
  return obj;
}

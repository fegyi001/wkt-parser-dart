/// wkt_parser library
library wkt_parser;

import 'package:wkt_parser/src/clean_wkt.dart' as clean_wkt;
import 'package:wkt_parser/src/parser.dart';
import 'package:wkt_parser/src/process.dart' as process;
import 'package:wkt_parser/src/proj_wkt.dart';

export 'package:wkt_parser/src/proj_wkt.dart';

ProjWKT parseWKT(String wkt) {
  var lisp = Parser.parseString(wkt);
  var type = lisp.removeAt(0).toString();
  var name = lisp.removeAt(0).toString();
  lisp.insert(0, ['name', name]);
  lisp.insert(0, ['type', type]);
  var obj = {};
  process.sExpr(lisp, obj);
  clean_wkt.cleanWKT(obj);
  var wktObj = ProjWKT(obj);
  return wktObj;
}

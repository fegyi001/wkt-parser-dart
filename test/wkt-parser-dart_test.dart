import 'package:wkt_parser/wkt-parser-dart.dart';
import 'package:test/test.dart';
import './data/wkt_strings.dart' as test_data;

void main() {
  group('Process test', () {
    setUp(() {});

    test('NZGD49 / New Zealand Map Grid', () {
      var output = Parser.parseString(test_data.testData[0]);
      expect(
        output.toString(),
        equals(
          '[PROJCS, NZGD49 / New Zealand Map Grid, [GEOGCS, NZGD49, [DATUM, New_Zealand_Geodetic_Datum_1949, [SPHEROID, International 1924, 6378388.0, 297.0, [AUTHORITY, EPSG, 7022]], [TOWGS84, 59.47, -5.04, 187.44, 0.47, -0.1, 1.024, -4.5993], [AUTHORITY, EPSG, 6272]], [PRIMEM, Greenwich, 0.0, [AUTHORITY, EPSG, 8901]], [UNIT, degree, 0.01745329251994328, [AUTHORITY, EPSG, 9122]], [AUTHORITY, EPSG, 4272]], [UNIT, metre, 1.0, [AUTHORITY, EPSG, 9001]], [PROJECTION, New_Zealand_Map_Grid], [PARAMETER, latitude_of_origin, -41.0], [PARAMETER, central_meridian, 173.0], [PARAMETER, false_easting, 2510000.0], [PARAMETER, false_northing, 6023150.0], [AUTHORITY, EPSG, 27200], [AXIS, Easting, EAST], [AXIS, Northing, NORTH]]'
              .toString(),
        ),
      );
    });
    test('PROJCS["NAD83 / Massachusetts Mainland', () {
      var output = Parser.parseString(test_data.testData[1]);
      expect(
        output.toString(),
        equals(
          '[PROJCS, NAD83 / Massachusetts Mainland, [GEOGCS, NAD83, [DATUM, North_American_Datum_1983, [SPHEROID, GRS 1980, 6378137.0, 298.257222101, [AUTHORITY, EPSG, 7019]], [AUTHORITY, EPSG, 6269]], [PRIMEM, Greenwich, 0.0, [AUTHORITY, EPSG, 8901]], [UNIT, degree, 0.01745329251994328, [AUTHORITY, EPSG, 9122]], [AUTHORITY, EPSG, 4269]], [UNIT, metre, 1.0, [AUTHORITY, EPSG, 9001]], [PROJECTION, Lambert_Conformal_Conic_2SP], [PARAMETER, standard_parallel_1, 42.68333333333333], [PARAMETER, standard_parallel_2, 41.71666666666667], [PARAMETER, latitude_of_origin, 41.0], [PARAMETER, central_meridian, -71.5], [PARAMETER, false_easting, 200000.0], [PARAMETER, false_northing, 750000.0], [AUTHORITY, EPSG, 26986], [AXIS, X, EAST], [AXIS, Y, NORTH]]'
              .toString(),
        ),
      );
    });
  });
}

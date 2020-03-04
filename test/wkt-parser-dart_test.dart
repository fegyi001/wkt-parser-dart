import 'package:test/test.dart';
import 'package:wkt_parser/wkt_parser.dart' as wkt_parser;

import './data/wkt_strings.dart' as test_data;

void main() {
  group('Parser test', () {
    test('NZGD49 / New Zealand Map Grid [OGC WKT]', () {
      var output = wkt_parser.parseWKT(test_data.testData[0]);
      expect(
        output.toString(),
        equals(
            '{"type":"PROJCS","name":"NZGD49 / New Zealand Map Grid","GEOGCS":{"name":"NZGD49","DATUM":{"name":"New_Zealand_Geodetic_Datum_1949","SPHEROID":{"name":"International 1924","a":6378388.0,"rf":297.0,"AUTHORITY":{"EPSG":"7022"}},"TOWGS84":[59.47,-5.04,187.44,0.47,-0.1,1.024,-4.5993],"AUTHORITY":{"EPSG":"6272"}},"PRIMEM":{"name":"greenwich","convert":0.0,"AUTHORITY":{"EPSG":"8901"}},"UNIT":{"name":"degree","convert":0.01745329251994328,"AUTHORITY":{"EPSG":"9122"}},"AUTHORITY":{"EPSG":"4272"}},"UNIT":{"name":"metre","convert":1.0,"AUTHORITY":{"EPSG":"9001"}},"PROJECTION":"New_Zealand_Map_Grid","latitude_of_origin":-41.0,"central_meridian":173.0,"false_easting":2510000.0,"false_northing":6023150.0,"AUTHORITY":{"EPSG":"27200"},"AXIS":[["Easting","EAST"],["Northing","NORTH"]],"projName":"New_Zealand_Map_Grid","units":"meter","to_meter":1.0,"datumCode":"nzgd49","ellps":"intl","a":6378388.0,"rf":297.0,"datum_params":[59.47,-5.04,187.44,0.47,-0.1,1.024,-4.5993],"x0":2510000.0,"y0":6023150.0,"long0":3.01941960595019,"lat0":-0.7155849933176751,"srsCode":"NZGD49 / New Zealand Map Grid"}'),
      );
    });
    test('NAD83 / Massachusetts Mainland [OGC WKT]', () {
      var output = wkt_parser.parseWKT(test_data.testData[1]);
      expect(
        output.toString(),
        equals(
            '{"type":"PROJCS","name":"NAD83 / Massachusetts Mainland","GEOGCS":{"name":"NAD83","DATUM":{"name":"North_American_Datum_1983","SPHEROID":{"name":"GRS 1980","a":6378137.0,"rf":298.257222101,"AUTHORITY":{"EPSG":"7019"}},"AUTHORITY":{"EPSG":"6269"}},"PRIMEM":{"name":"greenwich","convert":0.0,"AUTHORITY":{"EPSG":"8901"}},"UNIT":{"name":"degree","convert":0.01745329251994328,"AUTHORITY":{"EPSG":"9122"}},"AUTHORITY":{"EPSG":"4269"}},"UNIT":{"name":"metre","convert":1.0,"AUTHORITY":{"EPSG":"9001"}},"PROJECTION":"Lambert_Conformal_Conic_2SP","standard_parallel_1":42.68333333333333,"standard_parallel_2":41.71666666666667,"latitude_of_origin":41.0,"central_meridian":-71.5,"false_easting":200000.0,"false_northing":750000.0,"AUTHORITY":{"EPSG":"26986"},"AXIS":[["X","EAST"],["Y","NORTH"]],"projName":"Lambert_Conformal_Conic_2SP","units":"meter","to_meter":1.0,"datumCode":"north_american_datum_1983","ellps":"GRS 1980","a":6378137.0,"rf":298.257222101,"x0":200000.0,"y0":750000.0,"long0":-1.2479104151759457,"lat0":0.7155849933176751,"lat1":0.7449647023929129,"lat2":0.7280931862903012,"srsCode":"NAD83 / Massachusetts Mainland"}'),
      );
    });
    test('HD72 / EOV [OGC WKT]', () {
      var output = wkt_parser.parseWKT(test_data.testData[2]);
      expect(
        output.toString(),
        equals(
            '{"type":"PROJCS","name":"HD72 / EOV","GEOGCS":{"name":"HD72","DATUM":{"name":"Hungarian_Datum_1972","SPHEROID":{"name":"GRS 1967","a":6378160.0,"rf":298.247167427,"AUTHORITY":{"EPSG":"7036"}},"TOWGS84":[52.17,-71.82,-14.9,0.0,0.0,0.0,0.0],"AUTHORITY":{"EPSG":"6237"}},"PRIMEM":{"name":"greenwich","convert":0.0,"AUTHORITY":{"EPSG":"8901"}},"UNIT":{"name":"degree","convert":0.0174532925199433,"AUTHORITY":{"EPSG":"9122"}},"AUTHORITY":{"EPSG":"4237"}},"PROJECTION":"Hotine_Oblique_Mercator_Azimuth_Center","latitude_of_center":47.14439372222222,"longitude_of_center":19.04857177777778,"azimuth":90.0,"rectified_grid_angle":90.0,"scale_factor":0.99993,"false_easting":650000.0,"false_northing":200000.0,"UNIT":{"name":"metre","convert":1.0,"AUTHORITY":{"EPSG":"9001"}},"AXIS":[["Y","EAST"],["X","NORTH"]],"AUTHORITY":{"EPSG":"23700"},"projName":"Hotine_Oblique_Mercator_Azimuth_Center","units":"meter","to_meter":1.0,"datumCode":"hungarian_datum_1972","ellps":"GRS 1967","a":6378160.0,"rf":298.247167427,"datum_params":[52.17,-71.82,-14.9,0.0,0.0,0.0,0.0],"k0":0.99993,"lat0":0.8228248943093227,"longc":0.3324602953246919,"x0":650000.0,"y0":200000.0,"alpha":1.5707963267948966,"srsCode":"HD72 / EOV"}'),
      );
    });
    test('HD72 / EOV [ESRI WKT]', () {
      var output = wkt_parser.parseWKT(test_data.testData[3]);
      expect(
        output.toString(),
        equals(
            '{"type":"PROJCS","name":"HD72_EOV","GEOGCS":{"name":"GCS_HD72","DATUM":{"name":"D_Hungarian_1972","SPHEROID":{"name":"GRS_1967","a":6378160.0,"rf":298.247167427}},"PRIMEM":{"name":"greenwich","convert":0.0},"UNIT":{"name":"degree","convert":0.017453292519943295}},"PROJECTION":"Hotine_Oblique_Mercator_Azimuth_Center","latitude_of_center":47.14439372222222,"longitude_of_center":19.04857177777778,"azimuth":90.0,"scale_factor":0.99993,"false_easting":650000.0,"false_northing":200000.0,"UNIT":{"name":"meter","convert":1.0},"projName":"Hotine_Oblique_Mercator_Azimuth_Center","units":"meter","to_meter":1.0,"datumCode":"hungarian_1972","ellps":"GRS67","a":6378160.0,"rf":298.247167427,"k0":0.99993,"lat0":0.8228248943093227,"longc":0.3324602953246919,"x0":650000.0,"y0":200000.0,"alpha":1.5707963267948966,"srsCode":"HD72_EOV"}'),
      );
    });
  });
}

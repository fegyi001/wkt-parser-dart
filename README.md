# WKT-PARSER-DART

Wkt-parser-dart is the Dart version of [proj4js/wkt-parser](https://github.com/proj4js/wkt-parser) to convert a [WKT CRS](https://www.ogc.org/standards/wkt-crs) string into a `Map<dynamic, dynamic>` object.

## Installing

Add wkt_parser to `pubspec.yml` (dependencies section), then run `pub get` to download the new dependencies.

```yml
dependencies:
  wkt_parser: any # or the latest version on Pub
```

## Using

You can convert any **OGC WKT / ESRI WKT definition string** copied from [epsg.io](http://epsg.io/) into a `Map<dynamic,dynamic>` format which then can be further converted into JSON to be fully interoperable with any programming languages. This example uses the [OGC WKT of EPSG:23700](http://epsg.io/23700.wkt).

```dart
import 'package:wkt_parser/wkt_parser.dart' as wkt_parser;

void main() {
  // WKT CRS string
  var wktText =
      'PROJCS["HD72 / EOV",GEOGCS["HD72",DATUM["Hungarian_Datum_1972",SPHEROID["GRS 1967",6378160,298.247167427,AUTHORITY["EPSG","7036"]],TOWGS84[52.17,-71.82,-14.9,0,0,0,0],AUTHORITY["EPSG","6237"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree",0.0174532925199433,AUTHORITY["EPSG","9122"]],AUTHORITY["EPSG","4237"]],PROJECTION["Hotine_Oblique_Mercator_Azimuth_Center"],PARAMETER["latitude_of_center",47.14439372222222],PARAMETER["longitude_of_center",19.04857177777778],PARAMETER["azimuth",90],PARAMETER["rectified_grid_angle",90],PARAMETER["scale_factor",0.99993],PARAMETER["false_easting",650000],PARAMETER["false_northing",200000],UNIT["metre",1,AUTHORITY["EPSG","9001"]],AXIS["Y",EAST],AXIS["X",NORTH],AUTHORITY["EPSG","23700"]]';
  // Parsed object of type ProjWKT
  var output = wkt_parser.parseWKT(wktText);
  // This returns a JSON encoded string of the WKT
  print(output.toString());
}
```

The result should be (with JSON encode):

```json
{
  "type": "PROJCS",
  "name": "HD72 / EOV",
  "GEOGCS": {
    "name": "HD72",
    "DATUM": {
      "name": "Hungarian_Datum_1972",
      "SPHEROID": {
        "name": "GRS 1967",
        "a": 6378160.0,
        "rf": 298.247167427,
        "AUTHORITY": {
          "EPSG": "7036"
        }
      },
      "TOWGS84": [52.17, -71.82, -14.9, 0.0, 0.0, 0.0, 0.0],
      "AUTHORITY": {
        "EPSG": "6237"
      }
    },
    "PRIMEM": {
      "name": "greenwich",
      "convert": 0.0,
      "AUTHORITY": {
        "EPSG": "8901"
      }
    },
    "UNIT": {
      "name": "degree",
      "convert": 0.0174532925199433,
      "AUTHORITY": {
        "EPSG": "9122"
      }
    },
    "AUTHORITY": {
      "EPSG": "4237"
    }
  },
  "PROJECTION": "Hotine_Oblique_Mercator_Azimuth_Center",
  "latitude_of_center": 47.14439372222222,
  "longitude_of_center": 19.04857177777778,
  "azimuth": 90.0,
  "rectified_grid_angle": 90.0,
  "scale_factor": 0.99993,
  "false_easting": 650000.0,
  "false_northing": 200000.0,
  "UNIT": {
    "name": "metre",
    "convert": 1.0,
    "AUTHORITY": {
      "EPSG": "9001"
    }
  },
  "AXIS": [
    ["Y", "EAST"],
    ["X", "NORTH"]
  ],
  "AUTHORITY": {
    "EPSG": "23700"
  },
  "projName": "Hotine_Oblique_Mercator_Azimuth_Center",
  "units": "meter",
  "to_meter": 1.0,
  "datumCode": "hungarian_datum_1972",
  "ellps": "GRS 1967",
  "a": 6378160.0,
  "rf": 298.247167427,
  "datum_params": [52.17, -71.82, -14.9, 0.0, 0.0, 0.0, 0.0],
  "k0": 0.99993,
  "lat0": 0.8228248943093227,
  "longc": 0.3324602953246919,
  "x0": 650000.0,
  "y0": 200000.0,
  "alpha": 1.5707963267948966,
  "srsCode": "HD72 / EOV"
}
```

## Author

Wkt-parser-dart was ported from proj4js/wkt-parser by [Gergely Padányi-Gulyás (@fegyi001)](https://twitter.com/fegyi001) at [Ulyssys Ltd](https://www.ulyssys.hu/index_en.html), Budapest, Hungary.

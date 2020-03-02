# WKT-PARSER-DART

Wkt-parser-dart is the Dart version of [proj4js/wkt-parser](https://github.com/proj4js/wkt-parser) to convert a [WKT CRS](https://www.ogc.org/standards/wkt-crs) string into a `Map<dynamic, dynamic>` object.

## Installing

Add wkt_parser to `pubspec.yml` (dependencies section), then run `pub get` to download the new dependencies.

```yml
dependencies:
  wkt_parser: any # or the latest version on Pub
```

## Using

```dart
import 'dart:convert';

import 'package:wkt_parser/wkt_parser.dart' as wkt_parser;

void main() {
  var wkt =
      'PROJCS["HD72 / EOV",GEOGCS["HD72",DATUM["Hungarian_Datum_1972",SPHEROID["GRS 1967",6378160,298.247167427,AUTHORITY["EPSG","7036"]],TOWGS84[52.17,-71.82,-14.9,0,0,0,0],AUTHORITY["EPSG","6237"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree",0.0174532925199433,AUTHORITY["EPSG","9122"]],AUTHORITY["EPSG","4237"]],PROJECTION["Hotine_Oblique_Mercator_Azimuth_Center"],PARAMETER["latitude_of_center",47.14439372222222],PARAMETER["longitude_of_center",19.04857177777778],PARAMETER["azimuth",90],PARAMETER["rectified_grid_angle",90],PARAMETER["scale_factor",0.99993],PARAMETER["false_easting",650000],PARAMETER["false_northing",200000],UNIT["metre",1,AUTHORITY["EPSG","9001"]],AXIS["Y",EAST],AXIS["X",NORTH],AUTHORITY["EPSG","23700"]]';
  var output = wkt_parser.parse(wkt);
  print(jsonEncode(output));
}
```

## Author

Wkt-parser-dart was ported from proj4js/wkt-parser by [Gergely Padányi-Gulyás](https://twitter.com/fegyi001) (@fegyi001) at [Ulyssys Ltd](https://www.ulyssys.hu/index_en.html), Budapest, Hungary.

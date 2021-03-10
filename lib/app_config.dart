import "package:flutter/material.dart";
import 'package:sandyfarm/utils/auth_utils.dart';



enum BuildFlavor { PRODUCTION, DEVELOPMENT, STAGING }

class FlavorValues {
// coverage:ignore-start
  FlavorValues({@required this.baseUrl});

  final String baseUrl;
//Add other flavor specific values, e.g database name

}

class AppConfig {
  final BuildFlavor flavor;
  final String name;
  final Color color;
  final FlavorValues values;

  static AppConfig _instance;

  factory AppConfig(
      {@required BuildFlavor flavor,
      Color color: Colors.blue,
      @required FlavorValues values}) {
    _instance ??=
        AppConfig._internal(flavor, enumName(flavor.toString()), color, values);
    return _instance;
  }

  getBaseUrl() {
    if (values != null) {
      return values.baseUrl;
    } else {
      return  AuthUtils.productionHost;
    }
  }

  AppConfig._internal(this.flavor, this.name, this.color, this.values);

  static AppConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.flavor == BuildFlavor.PRODUCTION;

  static bool isDevelopment() => _instance.flavor == BuildFlavor.DEVELOPMENT;

  static bool isStaging() => _instance.flavor == BuildFlavor.STAGING;

  static String enumName(String enumToString) {
    List<String> paths = enumToString.split(".");
    return paths[paths.length - 1];
// coverage:ignore-end
  }
}

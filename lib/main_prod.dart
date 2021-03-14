
import "package:flutter/material.dart";

import 'package:sandyfarm/splash/splash.dart';

import 'package:sandyfarm/utils/auth_utils.dart';

import "app_config.dart";

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Getting package info and printing logs in debug mode only

  AppConfig(
      flavor: BuildFlavor.PRODUCTION,
      color: Colors.green,
      values: FlavorValues(baseUrl: AuthUtils.productionHost));

  runApp(SandyFarmsApp());
}

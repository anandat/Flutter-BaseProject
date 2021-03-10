import "dart:async";
import "dart:io";

import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:sandyfarm/ui/auth/login_page.dart';
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

  runApp(Splash());
}

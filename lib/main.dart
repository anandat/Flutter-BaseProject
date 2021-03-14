import "dart:async";
import "dart:io";

import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandyfarm/sandyfarms_bloc_observer.dart';
import 'package:sandyfarm/splash/splash.dart';
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
  Bloc.observer = SandyFarmsBlocObserver();
  AppConfig(
      flavor: BuildFlavor.DEVELOPMENT,
      color: Colors.green,
      values: FlavorValues(baseUrl: AuthUtils.productionHost));

  runApp(SandyFarmsApp());
}

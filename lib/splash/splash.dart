import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandyfarm/bloc/auth/auth_bloc.dart';
import 'package:sandyfarm/bloc/auth/auth_state.dart';
import 'package:sandyfarm/data/api_service.dart';
import 'package:sandyfarm/ui/auth/login_page.dart';

class SandyFarmsApp extends StatefulWidget {

  @override
  _SandyFarmsAppState createState() => _SandyFarmsAppState();
}
class _SandyFarmsAppState extends State<SandyFarmsApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(LoginState(ApiStatus.INITIAL))),

      ],

        child: MaterialApp(
          title: "SandyFarms Booking",

          theme: ThemeData(

          ),
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
          supportedLocales: [
            Locale('en', ''),
            Locale('ar', ''),
          ],

        ),

    );
  }

}

class Application {
  static BuildContext _context;
  Application(BuildContext context) {
    _context = context;
  }
  static BuildContext getContext() {
    return _context;
  }
}
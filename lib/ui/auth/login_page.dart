import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sandyfarm/bloc/auth/auth_bloc.dart';
import 'package:sandyfarm/bloc/auth/auth_event.dart';
import 'package:sandyfarm/bloc/auth/auth_state.dart';

class Splash extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Splash> {
  AuthBloc authBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // authBloc=BlocProvider.of<AuthBloc>(context);
    // TODO: implement build
    return MaterialApp(
      home: BlocProvider(
        create: (BuildContext context) => AuthBloc(InitialState()),
        child: Scaffold(
            body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is TestState) {
              print("lashdoahosdihask");
            }
          },
          child: BlocBuilder(
            builder: (context, state) {
              /*if (state is ) {

                  }  */
              return Scaffold(
                  appBar: AppBar(
                    title: Text("SandyFarms"),
                  ),
                  body: Center(
                    child: InkWell(
                      child: Text("atul"),
                      onTap: () {
                        BlocProvider.of<AuthBloc>(context).add(TestEvent());
                       // authBloc.add(TestEvent());
                        /*Scaffold.of(context).showSnackBar(SnackBar(
                          duration: Duration(milliseconds: 100000),
                          content: Text(
                            "asdasdas",
                          ),
                        ));*/
                      },
                    ),
                  ));
            },
            cubit: authBloc,
          ),
        )),
      ),
    );
  }
}

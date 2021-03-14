

import 'package:sandyfarm/data/api_service.dart';

abstract class AuthState {
  AuthState([List states = const []]) : super();

  List<Object> get props => [];
}

class LoginState extends AuthState {
  ApiStatus state;
  ApiStatus get apiState => state;

  String error;

  LoginState(this.state, { this.error});
}

class TestState extends AuthState {
  String a;
  TestState({this.a});
}
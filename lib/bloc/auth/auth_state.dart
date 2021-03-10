

abstract class AuthState {
  AuthState([List states = const []]) : super();

  List<Object> get props => [];
}

class InitialState extends AuthState {

}

class TestState extends AuthState {
  String a;
  TestState({this.a});
}
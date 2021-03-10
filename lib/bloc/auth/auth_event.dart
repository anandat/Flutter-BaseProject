
abstract class AuthEvent {
  AuthEvent([List event = const []]) : super();
}

class InitialEvent extends AuthEvent {

}

class TestEvent extends AuthEvent {

}
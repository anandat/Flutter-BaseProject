import 'package:bloc/bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

//bloc start
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(AuthState initialState) : super(initialState);



  

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
      if (event is TestEvent) {
        emit(TestState(a: "hello"));
      }
  }
}

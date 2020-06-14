import 'package:ddaliveryflutter/view/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is EditIdEvent) {
      yield state..id = event.text;
    } else if (event is EditIdEvent) {
      yield state..pw = event.text;
    }
  }
}

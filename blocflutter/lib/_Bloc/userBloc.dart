import 'package:bloc/bloc.dart';
import 'package:blocflutter/_Data/Contants/loginStatus.dart';
import 'package:blocflutter/_Data/Contants/userActions.dart';
import 'package:blocflutter/_Data/Models/user.dart';
import 'package:blocflutter/_Data/Models/userState.dart';
import 'package:blocflutter/_Data/Providers/userApi.dart';

class UserEvent {
  final String username;
  final String password;
  final UserActions action;
  const UserEvent(this.username, this.password, this.action);
}

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState(attempts: 0, loginStatus: LoginStatus.IDLE));
  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    switch (event.action) {
      case UserActions.LOGIN:
        yield (UserState(
            loginStatus: LoginStatus.LOGIN_IN_PROGRESS,
            attempts: state.attempts));
        User? user = await UserApi()
            .login(username: event.username, password: event.password);
        if (user == null) {
          yield (UserState(
              loginStatus: LoginStatus.IDLE, attempts: state.attempts + 1));
        } else {
          yield (UserState(
              loginStatus: LoginStatus.IS_LOGGEDIN,
              attempts: state.attempts,
              user: user));
        }
        break;
      case UserActions.LOGOUT:
        yield (UserState(
            loginStatus: LoginStatus.IDLE, attempts: 0, user: null));
        break;
    }
  }
}

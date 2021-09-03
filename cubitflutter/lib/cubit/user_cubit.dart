import 'package:bloc/bloc.dart';
import 'package:cubitflutter/Models/user.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit()
      : super(
            UserState(attempts: 0, isLoggedIn: false, loginInProgress: false));
  Future<void> login(
      {required String username, required String password}) async {
    emit(UserState(
        loginInProgress: true, isLoggedIn: false, attempts: state.attempts));
    await Future.delayed(Duration(seconds: 2));
    if (username == 'johndoe' && password == 'Abc1234') {
      User user = User(username: username, firstName: 'John', lastName: 'Doe');
      emit(UserState(
          loginInProgress: false,
          isLoggedIn: true,
          attempts: state.attempts,
          user: user));
      print('Logged in');
    } else {
      print('Invalid Login - ' + state.attempts.toString());
      emit(UserState(
          loginInProgress: false,
          isLoggedIn: false,
          attempts: state.attempts + 1));
    }
  }
}

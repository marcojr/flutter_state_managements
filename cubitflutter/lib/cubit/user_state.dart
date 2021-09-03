part of 'user_cubit.dart';

class UserState {
  int attempts;
  bool isLoggedIn;
  bool loginInProgress;
  User? user;

  UserState(
      {required this.attempts,
      required this.loginInProgress,
      required this.isLoggedIn,
      this.user});
}

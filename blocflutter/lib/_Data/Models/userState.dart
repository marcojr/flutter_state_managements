import 'package:blocflutter/_Data/Contants/loginStatus.dart';
import 'package:blocflutter/_Data/Models/user.dart';

class UserState {
  int attempts;
  LoginStatus loginStatus;
  User? user;

  UserState({required this.attempts, required this.loginStatus, this.user});
}

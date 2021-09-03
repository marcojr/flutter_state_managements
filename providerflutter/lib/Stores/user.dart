import 'package:flutter/material.dart';
import 'package:providerflutter/Models/user.dart';

class UserStore extends ChangeNotifier {
  User? user;

  bool loginInProgress = false;
  bool isLoggedIn = false;
  int attempts = 0;

  Future<void> login(
      {required String username, required String password}) async {
    loginInProgress = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 2));
    if (username == 'johndoe' && password == 'Abc1234') {
      user = User(username: username, firstName: 'John', lastName: 'Doe');
      isLoggedIn = true;
    } else {
      attempts++;
    }
    loginInProgress = false;
    notifyListeners();
  }
}

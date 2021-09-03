import 'package:blocflutter/_Data/Models/user.dart';

class UserApi {
  Future<User?> login(
      {required String username, required String password}) async {
    await Future.delayed(Duration(seconds: 2));
    if (username == 'johndoe' && password == 'Abc1234') {
      return User(username: username, firstName: 'John', lastName: 'Doe');
    } else {
      return null;
    }
  }
}

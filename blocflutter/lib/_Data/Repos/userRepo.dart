import 'package:blocflutter/_Data/Models/user.dart';
import 'package:blocflutter/_Data/Providers/userApi.dart';

class UserRepo {
  late final UserApi userApi;
  Future<User?> login(
      {required String username, required String password}) async {
    final User? user =
        await userApi.login(username: username, password: password);
    return user;
  }
}

import 'package:mobx/mobx.dart';
import 'package:mobxflutter/Models/user.dart';
part 'user.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  _UserStore() {
    autorun((_) {
      print('username: ${user?.username}');
      print('isLoggedIn: ${isLoggedIn.toString()}');
      print('Login errors: ${attempts.toString()}');
    });
  }
  @observable
  User? user;

  @observable
  int attempts = 0;

  @observable
  bool isLoggedIn = false;

  @observable
  bool loginInProgress = false;

  @computed
  int? get usernameLenght => user?.username.length;

  @action
  Future<void> login(
      {required String username, required String password}) async {
    loginInProgress = true;
    await Future.delayed(Duration(seconds: 2));
    if (username == 'johndoe' && password == 'Abc1234') {
      user = User(username: username, firstName: 'John', lastName: 'Doe');
      isLoggedIn = true;
    } else {
      attempts++;
    }
    loginInProgress = false;
  }
}

import 'package:flutter/cupertino.dart';
import 'Pages/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(home: LoginPage());
  }
}

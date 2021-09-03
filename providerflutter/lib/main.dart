import 'package:flutter/cupertino.dart';
import 'package:providerflutter/Stores/user.dart';
import 'Pages/loginPage.dart';
import 'package:provider/provider.dart';
import 'package:providerflutter/Pages/greetingsPage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserStore(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: Provider.of<UserStore>(context).isLoggedIn
            ? GreetingsPage()
            : LoginPage());
  }
}

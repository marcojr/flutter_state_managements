import 'package:blocflutter/_Data/Contants/loginStatus.dart';
import 'package:blocflutter/_Ui/Pages/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '_Data/Models/userState.dart';
import '_Ui/Pages/greetingsPage.dart';
import '_Bloc/userBloc.dart';

void main() {
  runApp(
    BlocProvider<UserBloc>(
      create: (context) => UserBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.loginStatus == LoginStatus.IS_LOGGEDIN
              ? GreetingsPage()
              : LoginPage();
        },
      ),
    );
  }
}

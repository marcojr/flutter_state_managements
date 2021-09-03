import 'package:cubitflutter/Pages/greetingsPage.dart';
import 'package:cubitflutter/cubit/user_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Pages/loginPage.dart';

void main() {
  runApp(
    BlocProvider<UserCubit>(
      create: (context) => UserCubit(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          return state.isLoggedIn ? GreetingsPage() : LoginPage();
        },
      ),
    );
  }
}

import 'package:blocflutter/_Bloc/userBloc.dart';
import 'package:blocflutter/_Data/Models/userState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GreetingsPage extends StatefulWidget {
  GreetingsPage({Key? key}) : super(key: key);

  @override
  _GreetingsPageState createState() => _GreetingsPageState();
}

class _GreetingsPageState extends State<GreetingsPage> {
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<UserBloc>(context);
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Container(
          color: CupertinoColors.white,
          child: SafeArea(
            child: Center(
              child: Text(
                  'Hello, ${cubit.state.user?.firstName} ${cubit.state.user?.lastName}  '),
            ),
          ),
        );
      },
    );
  }
}

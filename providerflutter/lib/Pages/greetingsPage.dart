import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:providerflutter/Stores/user.dart';

class GreetingsPage extends StatefulWidget {
  GreetingsPage({Key? key}) : super(key: key);

  @override
  _GreetingsPageState createState() => _GreetingsPageState();
}

class _GreetingsPageState extends State<GreetingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      child: SafeArea(
        child: Center(
          child: Text(
              'Hello, ${Provider.of<UserStore>(context).user?.firstName} ${Provider.of<UserStore>(context).user?.lastName}'),
        ),
      ),
    );
  }
}

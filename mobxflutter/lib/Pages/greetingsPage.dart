import 'package:flutter/cupertino.dart';
import 'package:mobxflutter/Models/user.dart';

class GreetingsPage extends StatefulWidget {
  final User user;
  GreetingsPage({Key? key, required this.user}) : super(key: key);

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
          child:
              Text('Hello, ${widget.user.firstName} ${widget.user.lastName} !'),
        ),
      ),
    );
  }
}

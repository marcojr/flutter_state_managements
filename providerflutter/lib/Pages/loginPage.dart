import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerflutter/Stores/user.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  customInputBox(
      {required String placeholder,
      required bool isPassword,
      required TextEditingController ctr,
      required isDisabled}) {
    return CupertinoTextField(
        enabled: !isDisabled,
        decoration: BoxDecoration(
          color: Color(0x90FFFFFF),
          borderRadius: BorderRadius.circular(5),
        ),
        placeholder: placeholder,
        controller: ctr,
        obscureText: isPassword);
  }

  final ctrUsername = TextEditingController(text: "");
  final ctrPassword = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bkg.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 160,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            margin: EdgeInsets.only(top: 50),
            child: customInputBox(
                placeholder: 'Username',
                ctr: ctrUsername,
                isPassword: false,
                isDisabled: Provider.of<UserStore>(context).loginInProgress),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            margin: EdgeInsets.only(top: 15),
            child: customInputBox(
                placeholder: 'Password',
                ctr: ctrPassword,
                isPassword: true,
                isDisabled: Provider.of<UserStore>(context).loginInProgress),
          ),
          GestureDetector(
            onTap: () async {
              await Provider.of<UserStore>(context, listen: false).login(
                  username: ctrUsername.text, password: ctrPassword.text);
            },
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF009bc9),
                ),
                margin: EdgeInsets.only(top: 30),
                child: Center(
                  child: Provider.of<UserStore>(context).loginInProgress
                      ? CircularProgressIndicator(color: CupertinoColors.white)
                      : Text(
                          'Log me in',
                          style: TextStyle(
                              color: CupertinoColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                ),
                height: 50,
                width: 200),
          ),
          Provider.of<UserStore>(context).attempts > 0
              ? Container(
                  color: Color(0x80000000),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 30),
                  child: Center(
                    child: Text(
                        "Invalid Login (${Provider.of<UserStore>(context).attempts.toString()})",
                        style:
                            TextStyle(color: CupertinoColors.destructiveRed)),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}

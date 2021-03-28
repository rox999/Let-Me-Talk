import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:let_me_talk/screens/home.dart';
import 'package:let_me_talk/screens/register.dart';
import 'package:let_me_talk/screens/sign_in.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  bool showSignIn = false;

  void tv(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context);
    if(user==null){
      if(showSignIn){
        return SignIn(toggle: tv,);
      }
      return Register(toggle: tv);
    }
    return Home();
  }
}

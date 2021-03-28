import 'package:flutter/material.dart';
import 'package:let_me_talk/screens/register.dart';
import 'package:let_me_talk/service/authentiication.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Let me talk!'),
          centerTitle: true,
          actions: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                return _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Sign Out'),
            ),
            FlatButton.icon(
              icon: Icon(Icons.settings),
              label: Text('Settings'),
              onPressed: () {} ,
            ),
          ],
        ),
        body: Center(
          child: Text("Hello"),
        ),
    );
  }
}


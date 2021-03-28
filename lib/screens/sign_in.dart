import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Container(
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 21.0,),
                //email
                TextFormField(

                  onChanged: (val) {
                    setState(() {

                    });
                  },
                ),
                SizedBox(height: 21.0,),
                //username
                TextFormField(
                  onChanged: (val) {
                    setState(() {

                    });
                  },
                ),
                SizedBox(height: 21.0,),
                //username
                TextFormField(
                  onChanged: (val) {
                    setState(() {

                    });
                  },
                ),
                SizedBox(height: 21.0,),

                RaisedButton(
                  onPressed: () {},
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:let_me_talk/service/authentiication.dart';
import 'package:let_me_talk/shared/constants.dart';

class Register extends StatefulWidget {
  final Function toggle;
  Register({this.toggle});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  String _email = "";
  String _username = "";
  String _password = "";
  String _error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Register'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              widget.toggle();
            },
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueGrey[100],
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 21.0,
              ),
              //email
              TextFormField(
                decoration: textInputDecoration.copyWith(
                  hintText: 'Email',
                ),
                validator: (val) {
                  if (val.isEmpty) return "please enter email";
                  return null;
                },
                onChanged: (val) {
                  setState(() {
                    _email = val;
                  });
                },
              ),
              SizedBox(
                height: 21.0,
              ),
              //username
              TextFormField(
                decoration: textInputDecoration.copyWith(
                  hintText: 'Username',
                ),
                validator: (val) {
                  if (val.isEmpty) return "please enter a valid user name";
                  return null;
                },
                onChanged: (val) {
                  setState(() {
                    _username = val;
                  });
                },
              ),
              SizedBox(
                height: 21.0,
              ),
              //username
              TextFormField(
                decoration: textInputDecoration.copyWith(
                  hintText: 'Password',
                ),
                validator: (val) {
                  if (val.isEmpty) return "please enter password";
                  return null;
                },
                onChanged: (val) {
                  setState(() {
                    _password = val;
                  });
                },
              ),
              SizedBox(
                height: 21.0,
              ),
              RaisedButton(
                child: Text('Register'),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    String res = await AuthService()
                        .registerWithEmailAndPassword(_email, _password);
                    if (res == "REGISTRATION FAILED") {
                      setState(() {
                        _error = "Invalid Email";
                      });
                    }
                  }
                },
              ),
              SizedBox(
                height: 21.0,
              ),
              Text(
                _error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

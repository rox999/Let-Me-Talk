import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:let_me_talk/screens/auth_wrapper.dart';
import 'package:let_me_talk/screens/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrapper();
  }
}





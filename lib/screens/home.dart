import 'package:flutter/material.dart';
import 'package:let_me_talk/screens/register.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // backgroundColor: Colors.grey,
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let me talk!'),
          centerTitle: true,
        ),
        body: Register(),
      ),

    );
  }
}

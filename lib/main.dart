import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
   // backgroundColor: Colors.grey,
    primarySwatch: Colors.deepPurple,
  ),
  home: Scaffold(
    appBar: AppBar(
      title: Text('Let me talk!'),
      centerTitle: true,
    ),
    body: Text('hello brother'),
  ),

  ));




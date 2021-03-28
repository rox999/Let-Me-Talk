import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  // final _formKey = GlobalKey<FormState>();

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

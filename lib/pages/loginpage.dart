import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: AppBar(
         leading: CloseButtonIcon(),
         title: Text('Login'),
         actions: [
           Text("skip"),
         ],
       ),
     ),
   );
  }

}
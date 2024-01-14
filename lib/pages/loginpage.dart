import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppBar(
          leading: Column(
            children: [CloseButtonIcon(), Text("CLOSE")],
          ),
          title: Center(child: Text('Sign in')),
          actions: [
            Text("SKIP FOR NOW"),
          ],
        ),
      ),
    );
  }
}

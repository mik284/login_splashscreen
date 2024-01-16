import 'package:flutter/material.dart';
import 'package:loginui/pages/loginpage.dart';
import 'package:loginui/pages/loginui_revamp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const LoginUi(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

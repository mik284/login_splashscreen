import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/textwidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CloseButtonIcon(),
            TextWidget(
                text: 'CLOSE',
                color: Colors.black,
                align: TextAlign.center,
                family: "Montserrat",
                weight: FontWeight.w300,
                size: 14),
          ],
        ),
        title: const TextWidget(
            text: 'Sign In',
            color: Colors.black,
            align: TextAlign.center,
            family: "Montserrat",
            weight: FontWeight.w500,
            size: 18),
        actions: const [
          TextWidget(
              text: 'SKIP FOR NOW',
              color: Colors.black,
              align: TextAlign.center,
              family: "Montserrat",
              weight: FontWeight.w500,
              size: 10),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_outlined),
                  TextWidget(
                      text: 'Welcome to Beamo',
                      color: Colors.black,
                      align: TextAlign.center,
                      family: "Montserrat",
                      weight: FontWeight.w600,
                      size: 13),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

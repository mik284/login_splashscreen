import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/buttonwidget.dart';
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
              padding: EdgeInsets.only(top: 28.0, bottom: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.account_circle_outlined),
                  ),
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
            Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ButtonWidget(
                        color: Colors.white,
                        width: 360,
                        height: 50,
                        radius: 50,
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.mail_outline),
                            ),
                            TextWidget(
                                text: "log in with email",
                                color: Colors.black,
                                family: "Montserrat",
                                size: 13,
                                weight: FontWeight.w400,
                                align: TextAlign.center)
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ButtonWidget(
                        color: Colors.white,
                        width: 360,
                        height: 50,
                        radius: 50,
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.grade_outlined),
                            ),
                            TextWidget(
                                text: "log in with Google",
                                color: Colors.black,
                                family: "Montserrat",
                                size: 13,
                                weight: FontWeight.w400,
                                align: TextAlign.center)
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ButtonWidget(
                        color: Colors.blueAccent,
                        width: 360,
                        height: 50,
                        radius: 50,
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.facebook, color: Colors.white, size: 30 ,),
                            ),
                            TextWidget(
                                text: "log in with Facebook",
                                color: Colors.white,
                                family: "Montserrat",
                                size: 13,
                                weight: FontWeight.w400,
                                align: TextAlign.center)
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonWidget(
          color: Colors.teal,
          width: 360,
          height: 60,
          radius: 50,
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                  text: "Next",
                  color: Colors.white,
                  family: "Montserrat",
                  size: 13,
                  weight: FontWeight.w400,
                  align: TextAlign.center)
            ],
          )) ,
    );
  }
}

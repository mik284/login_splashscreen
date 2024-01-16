import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/textwidget.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButtonIcon(),
        bottom: const PreferredSize(
            preferredSize: Size(30, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: TextWidget(
                    text: 'CLOSE',
                    color: Colors.black,
                    align: TextAlign.center,
                    family: "Montserrat",
                    weight: FontWeight.w300,
                    size: 10),
              ),
            )),
        title: const TextWidget(
            text: 'Sign In',
            color: Colors.black,
            align: TextAlign.center,
            family: "Montserrat",
            weight: FontWeight.w500,
            size: 18),
        centerTitle: true,
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
      body: ,
    );
  }
}

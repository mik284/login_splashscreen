import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/widgets/buttonwidget.dart';

import '../widgets/textwidget.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    List mylist = [
      {
        "img": const SizedBox(),
        "title": "👋 Welcome to Beamo",
        "color": Colors.transparent
      },
      {
        "img": const Icon(Icons.mail_outline, size: 30),
        "title": "Login with Email",
        "color": Colors.white
      },
      {
        "img": const Icon(Icons.account_circle, size: 30),
        "title": "Login with Google",
        "color": Colors.white
      },
      {
        "img": const Icon(
          Icons.facebook,
          color: Colors.white, size: 30,
        ),
        "title": "Login with Facebook",
        "color": Colors.blueAccent
      },
    ];
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButtonIcon(),
        bottom: const PreferredSize(
            preferredSize: Size(30, 5),
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
                    size: 12),
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
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: TextWidget(
                text: 'SKIP FOR NOW',
                color: Colors.black,
                align: TextAlign.center,
                family: "Montserrat",
                weight: FontWeight.w500,
                size: 10),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, index) {
            final item = mylist[index];
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: index == 0 ? 38.0 : 0),
                  child: ButtonWidget(
                      color: item['color'],
                      currentview: index == 0 || index == 3 ? "welcome-text" : "",
                      width: 360,
                      height: 70,
                      radius: 50,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          item["img"] as Widget,
                          const SizedBox(
                            width: 5,
                          ),
                          TextWidget(
                              text: item['title'],
                              color: index == 3 ? Colors.white : Colors.black,
                              family: "Montserrat",
                              size: index == 0 ? 18 : 13,
                              weight: FontWeight.w400,
                              align: TextAlign.center),
                        ],
                      )),
                )
              ],
            );
          }),
      bottomNavigationBar: const ButtonWidget(
          color: Color(0xff80bac2),
          width: 360,
          height: 50,
          radius: 40,
          currentview: "bottom",
          widget: TextWidget(
              text: "Next",
              color: Colors.white,
              family: "Montserrat",
              size: 13,
              weight: FontWeight.w400,
              align: TextAlign.center)),
    );
  }
}

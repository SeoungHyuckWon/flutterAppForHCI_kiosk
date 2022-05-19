// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_kiosk/screens/home2.dart';
import 'home.dart';

class MyStartPage extends StatefulWidget {
  const MyStartPage({Key? key, required String title}) : super(key: key);

  @override
  State<MyStartPage> createState() => _MyStartPageState();
}

class _MyStartPageState extends State<MyStartPage> {
  @override
  bool textBool = true;
  String text = '작은글씨';
  double textSize = 60;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(70)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 300,
                      child: RaisedButton(
                          onPressed: () {
                            goToHome();
                          },
                          color: Colors.lightBlue[200],
                          child: Text(
                            "매장",
                            style: TextStyle(
                                fontSize: textSize,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27.5))),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                      width: 150,
                      height: 300,
                      child: RaisedButton(
                          onPressed: () {
                            goToHome();
                          },
                          color: Colors.lightBlue[200],
                          child: Text(
                            "포장",
                            style: TextStyle(
                                fontSize: textSize,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27.5))),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(40)),
                Row(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 140)),
                    OutlineButton(
                        onPressed: () {
                          changeFontSize();
                        },
                        child: Text(text)),
                  ],
                )
              ],
            )));
  }

  void changeFontSize() async {
    setState(() {
      if (textBool == true) {
        textBool = false;
        textSize = 40;
        text = '큰글씨';
      } else {
        textBool = true;
        textSize = 60;
        text = '작은글씨';
      }
    });
  }

  void goToHome() {
    if (textBool == true) {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => MyHomePage()));
    } else {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => MyHomePage2()));
    }
  }
}

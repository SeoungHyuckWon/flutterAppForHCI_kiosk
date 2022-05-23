// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_kiosk/screens/home2.dart';
import 'home.dart';
//import 'package:sk_alert_dialog/sk_alert_dialog.dart';

enum fontsize { BIG, SMALL }

class MyStartPage extends StatefulWidget {
  const MyStartPage({Key? key, required String title}) : super(key: key);

  @override
  State<MyStartPage> createState() => _MyStartPageState();
}

class _MyStartPageState extends State<MyStartPage> {
  fontsize _fontsize = fontsize.BIG;
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
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0)),
                Row(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 170)),
                    IconButton(
                      onPressed: () {
                        changeFontSize();
                      },
                      icon: Icon(Icons.settings),
                      iconSize: 50,
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0)),
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
              ],
            )));
  }

  // void showAlertDialog() async {
  //   await showDialog(
  //     context: context,
  //     //barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         content: Column(
  //           children: <Widget>[
  //             ListTile(
  //               title: Text('큰 글씨'),
  //               leading: Radio(
  //                 value: fontsize.BIG,
  //                 groupValue: _fontsize,
  //                 onChanged: (fontsize? value) {
  //                   setState(() {
  //                     textBool = false;
  //                     textSize = 60;
  //                     _fontsize = value!;
  //                   });
  //                 },
  //               ),
  //             ),
  //             ListTile(
  //               title: Text('작은 글씨'),
  //               leading: Radio(
  //                 value: fontsize.SMALL,
  //                 groupValue: _fontsize,
  //                 onChanged: (fontsize? value) {
  //                   setState(() {
  //                     textBool = false;
  //                     textSize = 40;
  //                     _fontsize = value!;
  //                   });
  //                 },
  //               ),
  //             ),
  //           ],
  //         ),
  //         actions: [
  //           Row(
  //             children: [
  //               FlatButton(
  //                   onPressed: () {
  //                     Navigator.of(context).pop();
  //                   },
  //                   child: Text('닫기')),
  //             ],
  //           )
  //         ],
  //       );
  //     },
  //   );
  // }

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

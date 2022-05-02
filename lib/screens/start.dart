// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class MyStartPage extends StatelessWidget {
  final String title;

  const MyStartPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 300,
            child: RaisedButton(
                onPressed: () {
                  print("click");
                },
                color: Colors.lightBlue,
                child: Text(
                  "매장",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
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
                  print("click");
                },
                color: Colors.lightBlue,
                child: Text(
                  "포장",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27.5))),
          )
        ],
      ),
    ));
  }
}

class SizeBox {}

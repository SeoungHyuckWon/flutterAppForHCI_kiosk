import 'package:flutter/material.dart';
import 'package:flutter_application_kiosk/screens/start.dart';

class MyFinalPage extends StatefulWidget {
<<<<<<< HEAD
  const MyFinalPage({ Key? key, required String title }) : super(key: key);
=======
  const MyFinalPage({Key? key, required String title}) : super(key: key);
>>>>>>> 52b39158add7923a4cd59799a2bda0599a7100fe

  @override
  State<MyFinalPage> createState() => _MyFinalPageState();
}

class _MyFinalPageState extends State<MyFinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            width: 350,
            height: 350,
            color: Color.fromARGB(255, 208, 237, 176),
            margin: EdgeInsets.only(top:30)
          ),
        Text('총액:     20,000원',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             SizedBox(
              width: 130,
              height: 150,
              child: RaisedButton(
              onPressed: () {
                print("click");
              },
              color: Color.fromARGB(255, 255, 255, 255),
              child: Text(
               "메뉴추가",
               style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27.5))),
            ),
            SizedBox(
              width: 130,
              height: 150,
              child: RaisedButton(
              onPressed: () {
                print("click");
              },
              color: Color.fromARGB(255, 139, 253, 131),
              child: Text(
               "결제하기",
               style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27.5))),
            ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 7, horizontal: 0)),
          //SizedBox(height: 15.0),
          SizedBox(
            width: 300,
            height: 60,
            child: RaisedButton(
              onPressed: () {
                print("click");
              },
              color: Color.fromARGB(255, 255, 1, 1),
              child: Text(
               "전체주문취소",
               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27.5))),
          ),
        ],        
      )
      ));
  }
}
=======
        body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                    width: 350,
                    height: 350,
                    color: Color.fromARGB(255, 208, 237, 176),
                    margin: EdgeInsets.only(top: 30)),
                Text('총액:     20,000원',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 130,
                      height: 150,
                      child: RaisedButton(
                          onPressed: () {
                            print("click");
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Text(
                            "메뉴추가",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27.5))),
                    ),
                    SizedBox(
                      width: 130,
                      height: 150,
                      child: RaisedButton(
                          onPressed: () {
                            print("click");
                          },
                          color: Color.fromARGB(255, 139, 253, 131),
                          child: Text(
                            "결제하기",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27.5))),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: RaisedButton(
                      onPressed: () {
                        print("click");
                      },
                      color: Color.fromARGB(255, 255, 1, 1),
                      child: Text(
                        "전체주문취소",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27.5))),
                ),
              ],
            )));
  }
}
>>>>>>> 52b39158add7923a4cd59799a2bda0599a7100fe

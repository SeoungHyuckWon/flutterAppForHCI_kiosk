import 'package:flutter/material.dart';
import 'package:hci/screens/start.dart';


class MyDetailPage extends StatefulWidget {
  const MyDetailPage({ Key? key, required String title }) : super(key: key);

  @override
  State<MyDetailPage> createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:10,left:10, right:10),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text('1. 사이즈를 선택하세요. ',style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  SizedBox(
                    width: 140,
                    height: 120,

                    child: RaisedButton(
                        onPressed: () {
                          color: Color.fromARGB(255, 139, 253, 131);
                          print("click");
                        },

                        child:Text(
                          "+0원",
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),



                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5))),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: 140,
                    height: 120,
                    child: RaisedButton(
                        onPressed: () {
                          print("click");
                        },
                        color: Color.fromARGB(255, 139, 253, 131),
                        child:Text(
                          "+800원",
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5))),
                  ),

                ]
            ),

            Text('2. 시럽을 추가하시겠습니까? ',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  SizedBox(
                    width: 160,
                    height: 135,

                    child: RaisedButton(
                        onPressed: () {
                          color: Color.fromARGB(255, 139, 253, 131);
                          print("click");
                        },
                        child: Text(
                          "예",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5))),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: 160,
                    height: 135,
                    child: RaisedButton(
                        onPressed: () {
                          print("click");
                        },
                        color: Color.fromARGB(255, 139, 253, 131),
                        child:Text(
                          "아니오",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5))),
                  ),

                ]
            ),
            Text('3. 얼음을 추가하시겠습니까? ',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  SizedBox(
                    width: 160,
                    height: 135,

                    child: RaisedButton(
                        onPressed: () {
                          color: Color.fromARGB(255, 139, 253, 131);
                          print("click");
                        },
                        child: Text(
                          "예",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5))),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: 160,
                    height: 135,
                    child: RaisedButton(
                        onPressed: () {
                          print("click");
                        },
                        color: Color.fromARGB(255, 139, 253, 131),
                        child:Text(
                          "아니오",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5))),
                  ),

                ]
            ),
            Text('',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children:[

                  SizedBox(

                    width: 140,
                    height: 160,

                    child: RaisedButton(
                        onPressed: () {
                          color: Color.fromARGB(255, 139, 253, 131);
                          print("click");
                        },
                        child: Text(
                          "이전",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5))),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: 140,
                    height: 160,
                    child:
                    RaisedButton(
                        onPressed: () {
                          print("click");
                        },
                        color: Color.fromARGB(255, 139, 253, 131),
                        child:Text(
                          "다음",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5))),
                  ),

                ]
            ),


          ],
        ),

      ),);
  }
}

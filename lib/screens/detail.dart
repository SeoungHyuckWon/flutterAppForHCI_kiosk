import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_kiosk/database/db.dart';
import 'package:flutter_application_kiosk/database/menu.dart';
import 'package:flutter_application_kiosk/database/myOrder.dart';

import 'final.dart';
import 'home.dart';

class MyDetailPage extends StatelessWidget {
  final String id ;
  MyDetailPage({Key? key, required this.id}) : super(key: key);

  @override
 // late BuildContext _context;
  Widget build(BuildContext context) {
   // _context = context;
    String myname='';
    int myprice =0;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text('1. 사이즈를 선택하세요. ',
               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 140,
                height: 120,
                child: RaisedButton(
                    onPressed: () {
                      color:
                      Color.fromARGB(255, 139, 253, 131);

                    },
                    child: Text(
                      "+0원",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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
                      FutureBuilder<List<Menu>>(
                        future: findOrder(id),
                        builder: (BuildContext context, AsyncSnapshot<List<Menu>> snapshot) {
                          if (snapshot.data == null || snapshot.data == []) {
                            return Container(child: Text("데이터를 불러올 수 없습니다."));
                          } else {
                            print(snapshot.data);
                            Menu menu = snapshot.data![0];
                            myprice = menu.price+800;
                            return Text('');
                          }
                        },

                      );

                      },
                    color: Color.fromARGB(255, 139, 253, 131),
                    child: Text(
                      "+800원",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.5))),
              ),
            ]),
            Text('2. 시럽을 추가하시겠습니까? ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 160,
                height: 135,
                child: RaisedButton(
                    onPressed: () {
                      color:
                      Color.fromARGB(255, 139, 253, 131);
                      FutureBuilder<List<Menu>>(
                        future: findOrder(id),
                        builder: (BuildContext context, AsyncSnapshot<List<Menu>> snapshot) {
                          if (snapshot.data == null || snapshot.data == []) {
                            return Container(child: Text("데이터를 불러올 수 없습니다."));
                          } else {
                            print(snapshot.data);
                            Menu menu = snapshot.data![0];
                            myname = menu.name+"/아이스";
                            return Text('');
                          }
                        },

                      );

                    },
                    child: Text(
                      "예",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
                    child: Text(
                      "아니오",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.5))),
              ),
            ]),
            Text('3. 얼음을 추가하시겠습니까? ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 160,
                height: 135,
                child: RaisedButton(
                    onPressed: () {
                      color:
                      Color.fromARGB(255, 139, 253, 131);
                      FutureBuilder<List<Menu>>(
                        future: findOrder(id),
                        builder: (BuildContext context, AsyncSnapshot<List<Menu>> snapshot) {
                          if (snapshot.data == null || snapshot.data == []) {
                            return Container(child: Text("데이터를 불러올 수 없습니다."));
                          } else {
                            print(snapshot.data);
                            Menu menu = snapshot.data![0];
                            myname = menu.name+"/얼음";
                            return Text('');
                          }
                        },

                      );
                    },
                    child: Text(
                      "예",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
                    child: Text(
                      "아니오",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.5))),
              ),
            ]),
            //Text('',
                //style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 140,
                height: 160,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          );
                      Color.fromARGB(255, 139, 253, 131);
                      print("click");
                    },
                    child: Text(
                      "이전",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.5))),
              ),
              Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: 140,
                height: 160,
                child: RaisedButton(
                    onPressed: () {
                      saveOrder(myname, myprice);
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => MyFinalPage(
                                 id:id,
                              )));
                    },
                    color: Color.fromARGB(255, 139, 253, 131),
                    child: Text(
                      "다음",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.5))),
              ),
            ]),
          ],
        ),
      ),
    );
  }
  Future<List<Menu>> findOrder(String id) async {
    DBHelperMenu sd = DBHelperMenu();
    return await sd.findMenu(id);
  }
 /* findOrderBuilder(String id)
  { return FutureBuilder<List<Menu>>(
    future: findOrder(id),
    builder: (BuildContext context, AsyncSnapshot<List<Menu>> snapshot) {
      if (snapshot.data == null || snapshot.data == []) {
        return Container(child: Text("데이터를 불러올 수 없습니다."));
      } else {
        print(snapshot.data);
        Menu menu = snapshot.data![0];
        menu.price+800;
        return Text('');
      }
    },

  );
  }*/
  Future<void> saveOrder(String name, int price) async {
    DBHelperMyOrder sd = DBHelperMyOrder();

    var fido = MyOrder(
        name: name,
        price: price,
        count: 1,
        id: id
    );

    await sd.insertMyOrder(fido);

  }


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_kiosk/database/db.dart';
import 'package:flutter_application_kiosk/database/myOrder.dart';
import 'package:flutter_application_kiosk/screens/home.dart';
import 'package:flutter_application_kiosk/screens/start.dart';

class MyFinalPage extends StatefulWidget {
  const MyFinalPage({Key? key, required String id}) : super(key: key);

  @override
  State<MyFinalPage> createState() => _MyFinalPageState();
}

class _MyFinalPageState extends State<MyFinalPage> {
  @override
  final List<String> entries = <String>['아메리카노/S','카페라떼/L','에스프레소/S'];
  final List<int> colorCodes = <int>[3500,4000,3000];

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  child: listview_builder(),
                    width: 350,
                    height: 350,
                    color: Color.fromARGB(255, 208, 237, 176),
                    margin: EdgeInsets.only(top: 30)),
                Text('총액:    ${colorCodes[1]}원',
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
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => MyHomePage(
                                  )));
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
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 0)),
                //SizedBox(height: 15.0),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: RaisedButton(
                      onPressed: () {
                        saveDB();
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
  Future<void> saveDB() async {
    DBHelperMyOrder sd = DBHelperMyOrder();

    var fido = MyOrder(
        name: '아메리카노/S/시럽/얼음',
        price: 3000,
        count : 1,
        id: 'C2',
        );

    await sd.insertMyOrder(fido);

    print(await sd.myorder());
  }

  Future<void> deleteMyOrder(String name) async {
    DBHelperMyOrder sd = DBHelperMyOrder();
    sd.deleteMyOrder(name);
  }

  Future<List<MyOrder>> loadMyOrder(String name) async {
    DBHelperMyOrder sd = DBHelperMyOrder();
    return await sd.findMyOrder(name);
  }


  Widget listview_builder() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Card(
            child: Row(
              children: <Widget>[
                Text(
                  entries[index],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20)),
                Container(
                  child: Text(
                    '${colorCodes[index]}',
                    maxLines: 3,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
              ],
            )
          )
          
        );
      },
    );
  }
}

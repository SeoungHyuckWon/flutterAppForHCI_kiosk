import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_kiosk/database/db.dart';
import 'package:flutter_application_kiosk/database/menu.dart';
import 'package:sqflite/sqflite.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_application_kiosk/screens/detail.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2> {
  @override
  List<String> coffeeImg = [
    "assets/coffee_img/01.png",
    "assets/coffee_img/02.png",
    "assets/coffee_img/03.png",
    "assets/coffee_img/04.png",
    "assets/coffee_img/05.png",
    "assets/coffee_img/06.png",
    "assets/coffee_img/07.png",
    "assets/coffee_img/08.png",
    "assets/coffee_img/09.png",
    "assets/coffee_img/10.png",
    "assets/coffee_img/11.png",
    "assets/coffee_img/12.png"
  ];
  late BuildContext _context;
  String id = '';
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      body: Column(children: [
        Padding(padding: EdgeInsets.all(15)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ToggleSwitch(
            minWidth: 180.0,
            minHeight: 60.0,
            fontSize: 16.0,
            initialLabelIndex: 1,
            activeBgColor: [Colors.lightBlue],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.grey[900],
            totalSwitches: 2,
            labels: ['주스', '커피'],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ]),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          child: Expanded(
              child: GridView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 7 / 10,
                    //mainAxisExtent: 200,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        //color: Colors.lightBlue,
                        child: Column(
                          children: [
                            Row(children: [
                              Icon(Icons.thumb_up),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 15)),
                              IconButton(
                                  onPressed: () {
                                    showAlertDialog(
                                        'C' + (index + 1).toString());
                                  },
                                  icon: Icon(Icons.search))
                            ]),
                            //fit: BoxFit.fitWidth),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => MyDetailPage(
                                                id: 'C' + index.toString(),
                                              )));
                                },
                                child: Image(
                                    //alignment: Alignment.bottomCenter,
                                    image: AssetImage(coffeeImg[index]),
                                    fit: BoxFit.fitWidth))
                          ],
                        ));
                  })),
        )
      ]),
    );
  }

  Future<List<Menu>> loadMenu(String id) async {
    DBHelperMenu sd = DBHelperMenu();
    return await sd.findMenu(id);
  }

  Widget loadBuilder(String id) {
    return FutureBuilder<List<Menu>>(
      future: loadMenu(id),
      builder: (BuildContext context, AsyncSnapshot<List<Menu>> snapshot) {
        if (snapshot.data == null || snapshot.data == []) {
          return Container(child: Text("데이터를 불러올 수 없습니다."));
        } else {
          print(snapshot.data);
          Menu menu = snapshot.data![0];
          return SingleChildScrollView(
            child: ListBody(children: [
              Text(
                menu.mainAllergy,
                style: TextStyle(color: Colors.red),
              ),
              Text(menu.subAllergy)
            ]),
          );
        }
      },
      //future: loadMenu(id),
    );
  }

  Widget loadBuilderTitle(String id) {
    return FutureBuilder<List<Menu>>(
      future: loadMenu(id),
      builder: (BuildContext context, AsyncSnapshot<List<Menu>> snapshot) {
        if (snapshot.data == null || snapshot.data == []) {
          return Container(child: Text("데이터를 불러올 수 없습니다."));
        } else {
          print(snapshot.data);
          Menu menu = snapshot.data![0];
          return SingleChildScrollView(
            child: ListBody(children: [
              Text(
                menu.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ]),
          );
        }
      },
      //future: loadMenu(id),
    );
  }

  void showAlertDialog(String id) async {
    await showDialog(
      context: _context,
      //barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: loadBuilderTitle(id),
          //content: Text(id),
          content: loadBuilder(id),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('닫기')),
          ],
        );
      },
    );
  }
}

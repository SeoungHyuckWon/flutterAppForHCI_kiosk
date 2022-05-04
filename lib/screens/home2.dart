import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2> {
  @override
  List<String> coffeeImg = [
    "coffee_img/01.png",
    "coffee_img/02.png",
    "coffee_img/03.png",
    "coffee_img/04.png",
    "coffee_img/05.png",
    "coffee_img/06.png",
    "coffee_img/07.png",
    "coffee_img/08.png",
    "coffee_img/09.png",
    "coffee_img/10.png",
    "coffee_img/11.png",
    "coffee_img/12.png"
  ];
  Widget build(BuildContext context) {
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
                                  onPressed: () {}, icon: Icon(Icons.search))
                            ]),
                            //fit: BoxFit.fitWidth),
                            Image(
                                alignment: Alignment.bottomCenter,
                                image: AssetImage(coffeeImg[index]),
                                fit: BoxFit.fitWidth),
                          ],
                        ));
                  })),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_game/screen/kids_screen/contoller/home_contoller.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Home_contoller home_contoller = Get.put(
    Home_contoller(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text("Kids game"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Draggable(
                data: 'hello',
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                feedback: Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
                childWhenDragging: Container(
                  height: 120.0,
                  width: 120.0,
                  color: Colors.redAccent,
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blueAccent,
              alignment: Alignment.center,
              child: DragTarget(
                builder: (context, candidateData, rejectedData) {
                  return home_contoller.isDrag.value == false
                      ? Container()
                      : Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        );

                  //   home_contoller.isDrag.value == false?Container():Container(
                  //   height: 120.0,
                  //   width: 120.0,
                  //   color: Colors.amber,
                  // );
                },
                onWillAccept: (data) {
                  return data == 'hello';
                },
                onAccept: (data) {
                  home_contoller.isDrag.value = true;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

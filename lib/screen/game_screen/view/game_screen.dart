import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_game/screen/game_screen/contoller/game_contoller.dart';

class Game_Screen extends StatefulWidget {
  const Game_Screen({Key? key}) : super(key: key);

  @override
  State<Game_Screen> createState() => _Game_ScreenState();
}

class _Game_ScreenState extends State<Game_Screen> {
  Game_Contoller game_contoller = Get.put(Game_Contoller());

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: Scaffold(
    //     body: Center(
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Expanded(
    //             child: ListView.builder(
    //               itemBuilder: (context, index) {
    //                 return Container(
    //                   margin: EdgeInsets.all(20),
    //                   child: Draggable(
    //                     data: game_contoller.qustionList[index].key,
    //                     feedback: Text(
    //                       "${game_contoller.qustionList[index].title}",
    //                       style: TextStyle(
    //                           fontSize: 100, decoration: TextDecoration.none),
    //                     ),
    //                     child: Text("${game_contoller.qustionList[index]
    //                         .title}",style: TextStyle(fontSize: 50),),
    //                   ),
    //                 );
    //               },
    //               itemCount: game_contoller.qustionList.length,
    //             ),
    //           ),
    //         ],
    //
    //       ),
    //
    //     ),
    //   ),
    // );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red.shade100,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.red.shade50,
              child: Image.asset(
                "assets/images/kids.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Obx(
              () => Row(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 700,
                          width: 130,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(8),
                                child: Draggable(
                                  data: game_contoller.qustionList[index].key,
                                  feedback: game_contoller
                                              .qustionList[index].isDrop ==
                                          false
                                      ? Container(
                                          height: 100,
                                          width: 100,
                                          child: Text(
                                              "${game_contoller.qustionList[index].title}"),
                                        )
                                      : SizedBox(),
                                  onDragCompleted: () {
                                    print(game_contoller
                                        .qustionList[index].title);
                                    Container();
                                    game_contoller.qustionList[index].isDrop =
                                        true;
                                  },
                                  child: game_contoller
                                              .qustionList[index].isDrop ==
                                          false
                                      ? Container(
                                          height: 70,
                                          width: 70,
                                          child: Text(
                                            "${game_contoller.qustionList[index].title}",
                                            style: TextStyle(
                                                fontSize: 50,
                                                color: Colors.black),
                                          ),
                                        )
                                      : SizedBox(
                                          height: 2,
                                        ),
                                ),
                              );
                            },
                            itemCount: game_contoller.qustionList.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 770,
                          width: 130,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DragTarget(
                                  builder:
                                      (context, candidateData, rejectedData) {
                                    return Container(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${game_contoller.ansList[index].title}",
                                          style: TextStyle(fontSize: 50),
                                        ),
                                      ),
                                    );
                                  },
                                  onWillAccept: (data) {
                                    return data ==
                                        game_contoller.ansList[index].key;
                                  },
                                  onAccept: (data) {
                                    game_contoller.ansList.removeAt(
                                        game_contoller
                                            .qustionList[index].index!);
                                  },
                                ),
                              );
                            },
                            itemCount: game_contoller.ansList.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

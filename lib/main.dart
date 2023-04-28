import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_game/screen/game_screen/view/game_screen.dart';
import 'package:kids_game/screen/kids_screen/view/home_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) => Game_Screen(),
      },
    ),
  );
}

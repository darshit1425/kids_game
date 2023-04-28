import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kids_game/screen/game_screen/model/game_model.dart';

class Game_Contoller extends GetxController {
  RxList<DragModel> qustionList = <DragModel>[
    DragModel(title: "🍎", key: "apple", isDrop: false, index: 1),
    DragModel(title: "🥭", key: "mango", isDrop: false, index: 2),
    DragModel(title: "🍉", key: "watermelon", isDrop: false, index: 3),
    DragModel(title: "🥝", key: "kiwi", isDrop: false, index: 4),
    DragModel(title: "🍇", key: "graphs", isDrop: false, index: 5),
    DragModel(title: "🍍", key: "pineapple", isDrop: false, index: 6),
    DragModel(title: "🍒", key: "cheri", isDrop: false, index: 7),
    DragModel(title: "🍋", key: "lemon", isDrop: false, index: 8),
  ].obs;

  RxList<DragModel> ansList = <DragModel>[
    DragModel(title: "🥭", key: "mango", isDrop: false, index: 2),
    DragModel(title: "🥝", key: "kiwi", isDrop: false, index: 4),
    DragModel(title: "🍎", key: "apple", isDrop: false, index: 1),
    DragModel(title: "🍇", key: "graphs", isDrop: false, index: 5),
    DragModel(title: "🍉", key: "watermelon", isDrop: false, index: 3),
    DragModel(title: "🍒", key: "cheri", isDrop: false, index: 7),
    DragModel(title: "🍍", key: "pineapple", isDrop: false, index: 6),
    DragModel(title: "🍋", key: "lemon", isDrop: false, index: 8),
  ].obs;
}

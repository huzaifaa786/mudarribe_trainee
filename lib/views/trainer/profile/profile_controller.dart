import 'package:get/get.dart';
class TrainerprounfController extends GetxController{
    static TrainerprounfController instance = Get.find();

  RxList<bool> selections = [true, false, false].obs;
  void handleToggleButtons(int index) {
    for (int buttonIndex = 0; buttonIndex < selections.length; buttonIndex++) {
      selections[buttonIndex] = buttonIndex == index;
    }
     update();
  }
    RxList<String> gridItems = [
    'assets/images/post1.png',
    'assets/images/post2.png',
    'assets/images/post3.png',
    'assets/images/post4.png',
    'assets/images/post5.png',
    'assets/images/post6.png',
    'assets/images/post1.png',
    'assets/images/post2.png',
    'assets/images/post3.png',
    'assets/images/post4.png',
    'assets/images/post5.png',
    'assets/images/post6.png',  
  ].obs;
    RxBool isFollowing = false.obs;
 void toggleFollow() {
    isFollowing.value = !isFollowing.value;
  }
}
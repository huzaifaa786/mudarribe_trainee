import 'package:get/get.dart';
import 'package:mudarribe_trainee/views/trainer/profile/profile_controller.dart';
class Trainerprounfbinding extends Bindings{
 @ override
  void dependencies() {
     Get.lazyPut(() => TrainerprounfController());
  }
}
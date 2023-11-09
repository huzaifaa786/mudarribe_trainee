import 'package:get/get.dart';
import 'package:mudarribe_trainee/views/splash/splash_controller.dart';
import 'package:mudarribe_trainee/views/trainer/profile/profile_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => TrainerprounfController());
  }
}

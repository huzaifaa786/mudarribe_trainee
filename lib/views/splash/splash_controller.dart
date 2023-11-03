import 'package:get/get.dart';
import 'package:mudarribe_trainee/views/onboardings/onboarding_view.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();
  void initscreen() async {
    await Future.delayed(const Duration(seconds: 3), () {
      checkFirstSeen();
    });
  }

  Future checkFirstSeen() async {
    Get.off(() => const OnBoardingScreen());
  }
}

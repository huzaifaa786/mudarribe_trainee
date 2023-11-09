import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController instance = Get.find();
  bool obscureTextPassword = true;
  bool obscureTextCPassword = true;
  void toggle() {
    obscureTextPassword = !obscureTextPassword;
    update();
  }

  void toggle1() {
    obscureTextCPassword = !obscureTextCPassword;
    update();
  }
}

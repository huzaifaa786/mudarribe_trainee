import 'package:get/get.dart';
import 'package:mudarribe_trainee/views/authentication/forgot_password/forgot_password_controller.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordContoller());
  }
}

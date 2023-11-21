import 'package:get/get.dart';
import 'package:mudarribe_trainee/views/authentication/change_password/change_password_contoller.dart';
import 'package:mudarribe_trainee/views/authentication/forgot_password/forgot_password_controller.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangepasswordController());
  }
}

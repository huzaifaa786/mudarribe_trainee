import 'package:get/get.dart';
import 'package:mudarribe_trainee/views/authentication/change_password/change_password_contoller.dart';
import 'package:mudarribe_trainee/views/authentication/forgot_password/forgot_password_controller.dart';
import 'package:mudarribe_trainee/views/trainee_profile/report/report_problem_contoller.dart';

class ReportProblemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportProblemController());
  }
}

import 'package:get/get.dart';
import 'package:mudarribe_trainee/api/auth_api.dart';
import 'package:mudarribe_trainee/exceptions/auth_api_exception.dart';
import 'package:mudarribe_trainee/routes/app_routes.dart';
import 'package:mudarribe_trainee/utils/ui_utils.dart';

class ProfileController extends GetxController {
  static ProfileController instance = Get.find();
  final _authApi = AuthApi();

  @override
  void onInit() {
    super.onInit();
  }

  Future logout() async {
    try {
      await _authApi.logout();

      Get.offAllNamed(AppRoutes.signin);
    } on AuthApiException catch (e) {
      UiUtilites.errorSnackbar('Logout Failed', e.toString());
    }
  }
}

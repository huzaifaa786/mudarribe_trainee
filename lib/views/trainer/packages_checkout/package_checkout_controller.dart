import 'package:get/get.dart';
import 'package:mudarribe_trainee/views/trainer/event_checkout/event_checkout_view.dart';
import 'package:mudarribe_trainee/views/trainer/packages_checkout/package_checkout_view.dart';

class Packagecheckoutcontroller extends GetxController {
  static Packagecheckoutcontroller instance = Get.find();

   packagePaymentMethod? site;
  toggleplan(packagePaymentMethod value) {
    site = value;
    update();
  }

  @override
  void onInit() {
    site = packagePaymentMethod.visa;
    update();
    super.onInit();
  }


  
   var isButtonPressed = false.obs;

  void toggleButtonColor() {
    // Toggle the value when the button is pressed
    isButtonPressed.value = !isButtonPressed.value;
  }
}

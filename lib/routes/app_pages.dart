import 'package:get/get.dart';
import 'package:mudarribe_trainee/routes/app_routes.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_binding.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_view.dart';
import 'package:mudarribe_trainee/views/events/myevents/myEvents_view.dart';
import 'package:mudarribe_trainee/views/onboardings/onboarding_view.dart';
import 'package:mudarribe_trainee/views/splash/splash_binding.dart';
import 'package:mudarribe_trainee/views/splash/splash_view.dart';
import 'package:mudarribe_trainee/views/trainer%20pro%20un%20f/trainerprounf_view.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoardingView(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => const SignUpView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: AppRoutes.myevents,
      page: () => const MyEvents(),
      // binding: SignupBinding(),
    ),
    GetPage(
      name: AppRoutes.trainerprounf,
      page: () => const TrainerprounfView(),
      // binding: Trainerprounfbinding(),
    ),
  ];
}

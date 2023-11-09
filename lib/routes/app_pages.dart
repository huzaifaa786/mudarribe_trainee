import 'package:get/get.dart';
import 'package:mudarribe_trainee/routes/app_routes.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_binding.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_view.dart';
import 'package:mudarribe_trainee/views/events/eventsdetail/eventsDetail_view.dart';
import 'package:mudarribe_trainee/views/events/myevents/myEvents_view.dart';
import 'package:mudarribe_trainee/views/onboardings/onboarding_view.dart';
import 'package:mudarribe_trainee/views/splash/splash_binding.dart';
import 'package:mudarribe_trainee/views/splash/splash_view.dart';
import 'package:mudarribe_trainee/views/trainer/profile/profile_view.dart';

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
      name: AppRoutes.trainerprofile,
      page: () => const TrainerprofileView(),
      // binding: Trainerprounfbinding(),
    ),
    GetPage(
      name: AppRoutes.eventsDetails,
      page: () => const EventsDetails(),
      // binding: Trainerprounfbinding(),
    ),
  ];
}

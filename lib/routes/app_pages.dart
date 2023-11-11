import 'package:get/get.dart';
import 'package:mudarribe_trainee/routes/app_routes.dart';
import 'package:mudarribe_trainee/views/authentication/forgot_password/forgot_password_binding.dart';
import 'package:mudarribe_trainee/views/authentication/forgot_password/forgot_password_view.dart';
import 'package:mudarribe_trainee/views/authentication/signin/signin_binding.dart';
import 'package:mudarribe_trainee/views/authentication/signin/signin_view.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_binding.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_view.dart';
<<<<<<< HEAD
import 'package:mudarribe_trainee/views/catigories/catigories_result_screen.dart';
=======
import 'package:mudarribe_trainee/views/events/eventsdetail/eventsDetail_view.dart';
>>>>>>> 5faf5a8ed9f0029bb877469ac3580fc7665c9a37
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
<<<<<<< HEAD
        GetPage(
      name: AppRoutes.catigories,
      page: () => const CatigoriesResultScreen(),
     
=======
    GetPage(
      name: AppRoutes.trainerprofile,
      page: () => const TrainerprofileView(),
      // binding: Trainerprounfbinding(),
    ),
    GetPage(
      name: AppRoutes.eventsDetails,
      page: () => const EventsDetailsView(),
      // binding: Trainerprounfbinding(),
    ),
    GetPage(
      name: AppRoutes.signin,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.forgot,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
>>>>>>> 5faf5a8ed9f0029bb877469ac3580fc7665c9a37
    ),
  ];
}

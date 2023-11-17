import 'package:get/get.dart';
import 'package:mudarribe_trainee/components/ordercard.dart';
import 'package:mudarribe_trainee/routes/app_routes.dart';
import 'package:mudarribe_trainee/views/Myplans/Morningworkout/morning_workout_binding.dart';
import 'package:mudarribe_trainee/views/Myplans/Morningworkout/morning_workout_view.dart';
import 'package:mudarribe_trainee/views/Myplans/NutritionPlan/nutrition_plan_binding.dart';
import 'package:mudarribe_trainee/views/Myplans/NutritionPlan/nutrition_plan_view.dart';
import 'package:mudarribe_trainee/views/authentication/forgot_password/forgot_password_binding.dart';
import 'package:mudarribe_trainee/views/authentication/forgot_password/forgot_password_view.dart';
import 'package:mudarribe_trainee/views/authentication/signin/signin_binding.dart';
import 'package:mudarribe_trainee/views/authentication/signin/signin_view.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_binding.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_view.dart';
import 'package:mudarribe_trainee/views/categories/categories_result_view.dart';
import 'package:mudarribe_trainee/views/events/eventsdetail/eventsDetail_view.dart';
import 'package:mudarribe_trainee/views/exesrcontent/exercises.dart';
import 'package:mudarribe_trainee/views/exesrcontent/exercises2.dart';
import 'package:mudarribe_trainee/views/home/home_binding.dart';
import 'package:mudarribe_trainee/views/home/home_view.dart';
import 'package:mudarribe_trainee/views/footer/footer_view.dart';
import 'package:mudarribe_trainee/views/onboardings/onboarding_view.dart';
import 'package:mudarribe_trainee/views/splash/splash_binding.dart';
import 'package:mudarribe_trainee/views/splash/splash_view.dart';
import 'package:mudarribe_trainee/views/trainee_profile/saved/saved_binding.dart';
import 'package:mudarribe_trainee/views/trainee_profile/saved/saved_view.dart';
import 'package:mudarribe_trainee/views/trainee_profile/profile/profile_binding.dart';
import 'package:mudarribe_trainee/views/trainer/event_checkout/event_checkout_binding.dart';
import 'package:mudarribe_trainee/views/trainer/event_checkout/event_checkout_view.dart';
import 'package:mudarribe_trainee/views/trainee_profile/edit_profile/edit_profile_view.dart';
import 'package:mudarribe_trainee/views/trainee_profile/profile/profile_view.dart';
import 'package:mudarribe_trainee/views/trainer/packages_checkout/package_checkout_binding.dart';
import 'package:mudarribe_trainee/views/trainer/packages_checkout/package_checkout_view.dart';
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
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => const SignUpView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: AppRoutes.catigories,
      page: () => const CategoriesResultView(),
    ),
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
    ),
    GetPage(
      name: AppRoutes.footer,
      page: () => const FooterView(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const TraineeProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.editProfile,
      page: () => const TraineeEditProfileView(),
    ),
    GetPage(
      name: AppRoutes.eventcheckout,
      page: () => const EventcheckoutView(),
      binding: EventcheckoutBinding(),
    ),
    GetPage(
      name: AppRoutes.saved,
      page: () => const SavedViews(),
      binding: SavedBinding(),
    ),
    GetPage(
      name: AppRoutes.packagecheckout,
      page: () => const PackagecheckoutView(),
      binding: PackagecheckoutBinding(),
    ),
      GetPage(
      name: AppRoutes.exercises,
      page: () => const ExercisesScreen(),
      binding: PackagecheckoutBinding(),
    ),
      GetPage(
      name: AppRoutes.exercises2,
      page: () => const ExercisesScreen2(),
      binding: PackagecheckoutBinding(),
      ),
    GetPage(
      name: AppRoutes.ordercard,
      page: () => const OrderCard(),
      // binding: PackagecheckoutBinding(),
    ),
    GetPage(
      name: AppRoutes.Mornningworkout,
      page: () => const MornningworkoutView(),
      binding: MornningworkoutBinding(),
    ),
    GetPage(
      name: AppRoutes.Nutritionplan,
      page: () => const NutritionplanView(),
      binding: NutritionplanBinding(),
    ),
  ];
}

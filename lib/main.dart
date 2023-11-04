// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_controller.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_view.dart';
import 'package:mudarribe_trainee/views/onboardings/onboarding_view.dart';
import 'package:mudarribe_trainee/views/splash/splash_controller.dart';
import 'package:mudarribe_trainee/views/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(SplashController());
  Get.put(SignUpController());
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: "Mudarribe",
      initialRoute: 'Signup',
      routes: {
        'onBoarding': (_) => OnBoardingScreen(),
        'splash': (_) => SplashView(),
        'Signup': (_) => SignUpView(),
      },
    );
  }
}

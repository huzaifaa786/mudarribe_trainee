// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mudarribe_trainee/routes/app_pages.dart';
import 'package:mudarribe_trainee/views/splash/splash_binding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mudarribe_trainee/views/splash/splash_view.dart';
<<<<<<< HEAD
import 'package:mudarribe_trainee/views/trainer/profile/profile_view.dart';
=======
import 'firebase_options.dart';
>>>>>>> 5fefc25e80bddbc3741d63d53bc0557ee4f62ac4

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      title: "Mudarribe",
<<<<<<< HEAD
      // initialBinding: SplashBinding(),
      home: TrainerprofileView(),
=======
      initialBinding: SplashBinding(),
      home: SplashView(),
>>>>>>> 5fefc25e80bddbc3741d63d53bc0557ee4f62ac4
      getPages: AppPages.pages,
    );
  }
}

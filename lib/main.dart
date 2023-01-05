import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_app/homepage.dart';
import 'package:tennis_app/men_training.dart';
import 'package:tennis_app/training.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        routes: {
          'home': (context) => HomePage(),
          'training': (context) => TrainingPage(),
          'men_train': (context) => MenTraining()
        },
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}

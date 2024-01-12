import 'package:flutter/material.dart';
import 'package:food_receipe_app/modules/splash/splash_screen.dart';

class FoodReceipeApp extends StatelessWidget {
  const FoodReceipeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        indicatorColor: Colors.white,
      ),
      home: const SplashPage(),
    );
  }
}

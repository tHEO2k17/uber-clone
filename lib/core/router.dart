import 'package:flutter/material.dart';
import 'package:uber_clone/presentation/screens/home_screen.dart';
import 'package:uber_clone/presentation/screens/splash_screen.dart';

class AppRouter {
  static String initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.id: (context) => SplashScreen(),
    HomeScreen.id: (context) => HomeScreen(),
  };
}

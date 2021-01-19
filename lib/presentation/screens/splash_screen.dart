import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uber_clone/core/constants.dart';
import 'package:uber_clone/presentation/screens/home_screen.dart';

class SplashScreen extends HookWidget {
  static const id = '/';

  @override
  Widget build(BuildContext context) {
    final startApp = useMemoized(() {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          HomeScreen.id,
          (route) => false,
        );
      });
    });

    useEffect(() => startApp, const []);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(
          '${Constants.BaseImagePath}logo-black-bg.jpg',
          width: 180,
        ),
      ),
    );
  }
}

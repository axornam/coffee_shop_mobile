import 'package:coffee_shop/screens/home/home_screen.dart';
import 'package:coffee_shop/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/splash_bg.png'),
          fit: BoxFit.cover,
        )),
        child: const Image(
          image: AssetImage('assets/icons/coffeeshot_logo.png'),
          //opacity: AlwaysStoppedAnimation(0.2),
        ),
      ),
    );
  }

  bool _checkIsFirstTime() => true;

  bool _checkIsLoggedIn() => true;

  void _goToHomePage() async {
    //1.0 checkout auth-state
    await Future.delayed(const Duration(seconds: 3));

    //0.0 check first time
    if (_checkIsFirstTime()) {
      debugPrint("First Time, going to OnBoardingPage()");

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const OnBoardingPage(),
        ),
      );
    } else if (_checkIsLoggedIn()) {
      //2.0 if we have auth-state go to home page
      debugPrint("Not First Time, going to LoginScreen()");

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const HomePage(),
        ),
      );
    }
  }
}

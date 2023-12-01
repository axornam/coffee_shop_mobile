import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shot - Shop',
      theme: themeData,
      home: const SplashScreen(),
    );
  }
  //style: Theme.of(context).textTheme.headlineMedium,
  //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
}

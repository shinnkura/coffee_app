import 'package:flutter/material.dart';
import 'package:coffee_app/constants.dart';
import 'package:coffee_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: ThemeData().textTheme.apply(bodyColor: kTextColor).copyWith(
              bodyMedium: const TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}

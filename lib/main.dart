import 'package:fit_app/pages/starting_page/introduce_page.dart';
import 'package:fit_app/pages/starting_page/scroll_pages/scroll_page.dart';
import 'package:fit_app/pages/starting_page/splash_page.dart';
import 'package:fit_app/pages/workout_pages/main_navbar.dart';
import 'package:flutter/material.dart';

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
      home: const SplashPage(),
      routes: {
        IntroducePage.id: (context) => const IntroducePage(),
        ScrollPage.id: (context) => const ScrollPage(),
        NavBar.id: (context) => const NavBar(),
      },
    );
  }
}

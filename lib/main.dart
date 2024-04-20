import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff764abc),
          foregroundColor: Colors.white,
        )
      ),
      // home: HomeScreen();
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id : (context) => const HomeScreen(),
        ScreenTwo.id : (context) => const ScreenTwo()
      },

    );
  }
}



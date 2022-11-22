import 'package:flutter/material.dart';

import './screens/starting_screen.dart';
import './screens/workout_split_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LONELY GYM GUIDE',
      theme: ThemeData(
      ),
      home: const StartingScreen(),
      routes: {
        WorkoutSplit.routeName: (context) => const WorkoutSplit(),
        HomeScreen.routeName:(context) => const HomeScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';

import './screens/starting_screen.dart';
import './screens/workout_split_screen.dart';
import './screens/home_screen.dart';
import './screens/full_body_screen.dart';
import './screens/PPL_screen.dart';
import './screens/bro_screen.dart';

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
        canvasColor: Color.fromARGB(255, 243, 216, 185),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline3: TextStyle(
                fontFamily: 'Anton',
                fontSize: 22,
              ),
              headline2: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              headline1: TextStyle(
                fontFamily: 'Anton',
                fontSize: 24,
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: TextStyle(
                fontSize: 16,
                fontFamily: 'Raleway',
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                fontSize: 14,
                fontFamily: 'Raleway',
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
      home: StartingScreen(),
      routes: {
        WorkoutSplit.routeName: (context) => const WorkoutSplit(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        FullBody.routeName: (context) => FullBody(),
        PPLScreen.routeName: (context) => PPLScreen(),
        Bro.routeName: (context) => Bro(),
      },
    );
  }
}

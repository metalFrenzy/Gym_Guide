import 'package:flutter/material.dart';

import '../screens/workout_split_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        backgroundColor: const Color(0xFFFFBD73),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 12,
              left: 10,
              right: 10,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/gym3.jpg',
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
            ),
            child: RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'WELCOME TO LONELY GYM GUIDE\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Hopefully this guide help you understand different workout routines, and covers as much excercises for each muscles group. Which eventually helps to costruct your own plan.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 110,
            margin: const EdgeInsets.only(right: 8, left: 8, top: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 189, 115),
                  Color.fromARGB(255, 247, 162, 66),
                  Color.fromARGB(255, 234, 135, 22),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.fitness_center,
              ),
              title: Text(
                'WORKOUT SPLITS',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                  'Your workout schedule is called your workout split, how regularly you lift and which muscles you train.Tap here for the 3 common splits for maximum results'),
              isThreeLine: true,
              onTap: () {
                Navigator.of(context).pushNamed(WorkoutSplit.routeName);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 110,
            margin: const EdgeInsets.only(right: 8, left: 8, top: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 189, 115),
                  Color.fromARGB(255, 247, 162, 66),
                  Color.fromARGB(255, 234, 135, 22),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.bolt,
              ),
              title: Text(
                'EXCERCISES',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'Tap here for some of the classic excercises for each muscle ',
              ),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}

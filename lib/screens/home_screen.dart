import 'package:flutter/material.dart';

import '../screens/workout_split_screen.dart';
import '../widgets/image_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HOME',
          style: Theme.of(context).textTheme.headline3,
        ),
        backgroundColor: const Color(0xFFFFBD73),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageRender('assets/images/gym3.jpg'),
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
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'WELCOME TO LONELY GYM GUIDE\n',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextSpan(
                      text:
                          'Hopefully this guide help you understand different workout routines, and covers as much excercises for each muscles group. Which eventually helps to costruct your own plan.',
                      style: Theme.of(context).textTheme.bodyText1,
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
                dense: true,
                leading: Icon(
                  Icons.fitness_center,
                ),
                title: Text(
                  'WORKOUT SPLITS',
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: Text(
                    'Your workout schedule is called your workout split, how regularly you lift and which muscles you train.Tap here for the 3 common splits for maximum results'),
                isThreeLine: true,
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(WorkoutSplit.routeName);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              height: 110,
              margin: const EdgeInsets.only(
                right: 8,
                left: 8,
                top: 20,
                bottom: 10,
              ),
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
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: Text(
                  'Tap here for some of the classic excercises for each muscle ',
                ),
                isThreeLine: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

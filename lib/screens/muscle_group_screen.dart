import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/muscle_group_grid.dart';

class MuscleScreen extends StatelessWidget {
  static const routeName = '/muscle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MAJOR MUSCLE GROUP',
          style: Theme.of(context).textTheme.headline3,
        ),
        backgroundColor: const Color(0xFFFFBD73),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(11),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'These are some excercise for every muscle group, I have chosen these excericse because they are most effective excercises that help grow and strengthen each muscle.\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'Please note there are a lot of excercises out there and you are free to explore them, but simply in my opinion they are the most effective. And make sure to do these excerices correctly to avoid injuries. I hope you find this app helpfull :) .',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            MuscleGrid(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text(
                'Please ensure a positive trainig enviroment in the gym and do not be cocky and help others in the gym and motivate them',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

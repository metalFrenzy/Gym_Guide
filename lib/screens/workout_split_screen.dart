import 'package:flutter/material.dart';

import '/screens/full_body_screen.dart';
import '../widgets/app_drawer.dart';

class WorkoutSplit extends StatelessWidget {
  const WorkoutSplit({super.key});
  static const routeName = '/split';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFBD73),
        title: Text(
          'WORKOUT SPLITS',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8, top: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/images/minion.jpg'),
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
                  Radius.circular(10),
                ),
              ),
              child: ListTile(
                enabled: true,
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(FullBody.routeName);
                },
                title: Text(
                  'FULL BODY WORKOUT',
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: Text(
                  'Best known for muscles growth and strenght reagradless your training experince. Tap to learn more...',
                ),
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
                  Radius.circular(10),
                ),
              ),
              child: ListTile(
                enabled: true,
                onTap: () {},
                title: Text(
                  'PUSH PULL LEGS',
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: Text(
                  'One of the most effective workout splits, in Which Major muscle groups are split into three different workouts. Tap to learn more...',
                ),
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
                  Radius.circular(10),
                ),
              ),
              child: ListTile(
                enabled: true,
                onTap: () {},
                title: Text(
                  'BRO-SPLIT',
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: Text(
                  'This workout routine is very simple in that it involves training each muscle group once per week with high volume. Tap to learn more...',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../services/hyperlink_service.dart';

class PPLScreen extends StatelessWidget {
  static const routeName = '/ppl';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFBD73),
        title: Text(
          'PUSH PULL LEGS',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
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
                  'assets/images/gym.jpg',
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 8,
              ),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'WORKOUT DESCRIPTION\n',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextSpan(
                      text:
                          'The push/pull/legs split is a very simple training method in which you split your body into three parts. And each part is then trained on its own separate day.\n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'In the push workouts you train all the pushing muscles of your upper body. So your chest, shoulders, and triceps. ',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'In the pull workouts you train all the pulling  muscles of your upper body. So your back, biceps, rear delts, and traps. ',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'Lastly, in the legs workout, you train your entire lower body. which is your quads, hamstrings, and calves.\n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'This split is typically perfromed in the span of 6 days per week with a rest day after 3 days. but note push-pull legs split is flexible and can be easily be adjusted in a variety of ways to best fit your liking, such as this split can also be perfromed in as span of 3 days per week.\n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'The reason why this split is effective for muscle growth is that it trains each major muscle group 2 times per week, allows plenty of recovery time for each muscle. Finally it can be easily adjustable to fit different palns, goals, and level of experience. ',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
              ),
              child: HyperLink(
                'https://builtwithscience.com/fitness-tips/push-pull-legs-routine/',
                'Click here for more information',
              ),
            )
          ],
        ),
      ),
    );
  }
}

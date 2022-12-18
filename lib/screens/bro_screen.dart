import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../services/hyperlink_service.dart';

class Bro extends StatelessWidget {
  static const routeName = '/bro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BRO SPLIT',
          style: Theme.of(context).textTheme.headline3,
        ),
        backgroundColor: const Color(0xFFFFBD73),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12, left: 10, right: 10),
              child: ClipRRect(
                child: Image.asset('assets/images/jerry.jpg'),
                borderRadius: BorderRadius.circular(15),
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
                          'Bro split is a simple workout split where you concentrate on a specific muscle group per day. ',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'Since you only hit one muscle group per day, bro plans on you to train 5 days per week with 2 rest days. \n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'Another main feature of bro split, is the use of specialty sets, it is a different kind of sit that you do to add more volume or bring the muscle to failure rather than just repeating the movement for 10 or 8 times. Examples of specialty sets are drop sets, supersets, and traing to failure. \n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'However this split is not the most effective for number of reasons, bro split use low frequency as it trains each muscle group 1 time per week while low frequency training offers an advantage which is you are able to perform greater volume per muscle group in each session.\n\nbut the drawback is that the workout will end up being longer, moreover it does not offer high quality set, for example if you do 8 exercise per muscle group you will become fatigued after 3 or 4 and you will performance will decrease from then on. hence you can see bro split is not the best option.  ',
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
                'https://builtwithscience.com/workouts/best-workout-split/',
                'Click here for more information',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

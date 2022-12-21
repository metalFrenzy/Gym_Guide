import 'package:flutter/material.dart';

import '../services/hyperlink_service.dart';
import '../widgets/app_drawer.dart';
import '../widgets/image_widget.dart';

class FullBody extends StatelessWidget {
  static const routeName = '/full';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFBD73),
        title: Text(
          'FULL BODY WORKOUT',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageRender('assets/images/plates.jpg'),
            const SizedBox(
              height: 5,
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
                      text: 'WORKOUT DESCRIPTION\n',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextSpan(
                      text:
                          'Many bodybuilding greats used this split to build the foundation of their lean muscle mass.\n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'The reason for their effectiveness is they allow you to train hard and only 3 days a week. This type of programming allows most to optimally recover between training sessions.\n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'Any experience level can use this split. Beginners will thrive when using full body workouts. Intermediates will continue to notice progress towards their goals. And advanced lifters will be able to maintain their size and slowly build upon their muscle mass.\n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text:
                          'However, in order to maximize the benefits of a full body workout routine, you need to adequately target all of your major muscle groups within each workout.And you need to do so in a balanced manner such that your muscles grow and strengthen proportionately overtime. Leading to not only a more aesthetic physique but also minimizing your risk of injury.\n\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text: 'The Full Body Workout Overview.\n',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextSpan(
                      text:
                          'As we said earlier full body workout consists of 3 workouts days per week and will change between two diffirent workouts like so.\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Monday',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Tuesday',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Wednesday',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Thursday',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Friday',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Saturday',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Sunday',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          'WORKOUT A',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      DataCell(
                        Text(
                          'REST',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      DataCell(
                        Text(
                          'WORKOUT B',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      DataCell(
                        Text(
                          'REST',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      DataCell(
                        Text(
                          'WORKOUT A',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      DataCell(
                        Text(
                          'REST',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      DataCell(
                        Text(
                          'WORKOUT B/REST',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
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
                      text:
                          'This was and example week of the full body workout,Each workout will consist of mainly compound movements with a mix of various accessory exercises to minimize any potential muscle imbalances.',
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
                'https://builtwithscience.com/workouts/best-full-body-workout/',
                'Click here for more information',
              ),
            )
          ],
        ),
      ),
    );
  }
}

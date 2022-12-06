import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/workout_split_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            backgroundColor: const Color(0xFFFFBD73),
            title: Text(
              'HELLO!',
              style: Theme.of(context).textTheme.headline1,
            ),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                HomeScreen.routeName,
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.bolt),
            title: Text(
              "WORKOUT SPLITS",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                WorkoutSplit.routeName,
              );
            },
          ),
        ],
      ),
    );
  }
}

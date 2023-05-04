import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/exercises_provider.dart';

class MuscleDetailScreen extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final exerId = ModalRoute.of(context)!.settings.arguments as String;
    final Thisexer =
        Provider.of<ExerciseProvider>(context, listen: false).findById(exerId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Thisexer.title,
          style: Theme.of(context).textTheme.headline3,
        ),
        backgroundColor: const Color(0xFFFFBD73),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: Thisexer.id,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(Thisexer.imageUrl),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                Thisexer.description,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

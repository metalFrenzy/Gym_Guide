import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/exercises_provider.dart';
import '../widgets/muscle_group_item.dart';

class MuscleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final exercise = Provider.of<ExerciseProvider>(context);
    final exer = exercise.exer;
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: ((context, index) => MuscleGridItem(
            exer[index].id,
            exer[index].title,
            exer[index].imageUrl,
          )),
      padding: const EdgeInsets.all(10),
      itemCount: exercise.exer.length,
    );
  }
}

import 'package:flutter/material.dart';

import 'exercise.dart';

class ExerciseProvider with ChangeNotifier {
  List<Exercise> _exer = [
    Exercise(
      id: 'e1',
      title: 'Barbell Bench Press',
      description:
          'This exercise will target your middle part of your chest while also developing your shoulder and triceps.It is going to be responsible for contributing to most of your chest’s overall size and thickness overtime',
      imageUrl:
          'https://i.pinimg.com/originals/e0/81/fa/e081fa023888194d574a693e3630ba4a.png',
    ),
    Exercise(
      id: 'e2',
      title: 'Incline Dumbbell Press',
      description:
          'This exercise will focus on the upper portion of your chest while also feeling your front shoulders and triceps are involved in this movement. Adjust the bench angle so it is between 15-45 degree and test this so see which angle activates your upper while also comfortable on your shoulders,',
      imageUrl:
          'https://i.pinimg.com/originals/02/26/2d/02262d64d37f2636bbd2a24901cb2198.png',
    ),
    Exercise(
      id: 'e3',
      title: 'Barbell Row',
      description:
          'Barbell row is one of the most effective exercises for back thickness and width. It works the whole back, but the main muscles activated is lats, traps, rhomboids, and rear deltoids. This exercise is flexible as it able to target specific back muscles more than others if you adjust your form.',
      imageUrl:
          'https://i.pinimg.com/originals/72/40/d1/7240d16539bd0037166e2041c04b3c8f.png',
    ),
    Exercise(
      id: 'e4',
      title: 'Overhead Press',
      description:
          'This exercise is responsible for growing and rouding your shoulders it also strengthen your core and triceps',
      imageUrl:
          'https://i.pinimg.com/originals/0c/86/c9/0c86c9a200fa68372456686637094f94.png',
    ),
    Exercise(
      id: 'e5',
      title: 'Dumbbell Lateral Raises',
      description:
          'Is an isolation exercise for buliding shoulder strength and muscle, it focuses on the middle head of the deltoid ',
      imageUrl:
          'https://www.muscleandfitness.com/wp-content/uploads/2018/04/1109-lateral-raise.jpg?w=1109&h=614&crop=1&quality=86&strip=all',
    ),
    Exercise(
      id: 'e6',
      title: 'Barbel Squats',
      description:
          'squats is leg focused movement that requires your major lower-body muscles to work in tandem the main muscles worked are glutes, quads, hamstrings and calves in also improve your core strength as your core works ard to stable your body and support it through the motion of the squats.',
      imageUrl:
          'https://cdn-ami-drupal.heartyhosting.com/sites/muscleandfitness.com/files/styles/full_node_image_1090x614/public/media/barbell-back-squat_0.jpg?itok=bH9oV5Bi',
    ),
  ];

  List<Exercise> get exer {
    return [..._exer];
  }

  Exercise findById(String id) {
    return _exer.firstWhere(
      (element) => element.id == id,
    );
  }
}

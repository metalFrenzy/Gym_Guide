import 'package:flutter/material.dart';

import '../screens/muscle_details_screen.dart';

class MuscleGridItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  MuscleGridItem(
    this.id,
    this.title,
    this.imageUrl,
  );
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: (() {
          Navigator.of(context).pushNamed(
            MuscleDetailScreen.routeName,
            arguments: id,
          );
        }),
        child: GridTile(
          child: Hero(
            tag: id,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Color(0xFFFFBD73),
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

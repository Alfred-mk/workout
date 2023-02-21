import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  final String exerciseName;
  final String weight;
  final String reps;
  final String sets;
  final bool isCompleted;

  const ExerciseTitle({
    super.key,
    required this.exerciseName,
    required this.weight,
    required this.reps,
    required this.sets,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        title: Text(
          exerciseName,
        ),
        subtitle: Row(children: [
          // weight
          Chip(
            label: Text(
              "$weight kg",
            ),
          ),
          // reps
          Chip(
            label: Text(
              "$reps reps",
            ),
          ),
          // sets
          Chip(
            label: Text(
              "$sets sets",
            ),
          ),
        ]),
      ),
    );
  }
}

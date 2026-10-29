import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class WorkoutListPage extends StatelessWidget {
  const WorkoutListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.zambiaGreenDark,
      appBar: AppBar(title: const Text('Workouts'), backgroundColor: AppColors.zambiaGreen),
      body: const Center(child: Text('Workout List', style: TextStyle(color: Colors.white))),
    );
  }
}

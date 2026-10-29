import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
class TodayWorkoutPage extends StatelessWidget {
  const TodayWorkoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.zambiaGreenDark,
      appBar: AppBar(title: const Text('Today Workout'), backgroundColor: AppColors.zambiaGreen),
      body: const Center(child: Text('Today Workout Ready!', style: TextStyle(color: Colors.white))),
    );
  }
}

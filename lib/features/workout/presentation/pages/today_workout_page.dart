import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/zamfit_logo.dart';
import '../../data/models/exercise_model.dart';

class TodayWorkoutPage extends StatelessWidget {
  const TodayWorkoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [
      Container(margin: const EdgeInsets.all(16), padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: AppColors.zambiaGreen, borderRadius: BorderRadius.circular(16), border: Border.all(color: AppColors.gold.withOpacity(0.3))), child: const Row(children: [ZamfitLogo(), Spacer(), Text("45 min", style: TextStyle(color: AppColors.goldLight))])),
      Expanded(child: ListView.builder(padding: const EdgeInsets.symmetric(horizontal: 16), itemCount: mockExercises.length, itemBuilder: (_, i) {
        final ex = mockExercises[i];
        return Container(margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(14), decoration: BoxDecoration(color: AppColors.cardGreen, borderRadius: BorderRadius.circular(14), border: Border.all(color: AppColors.gold.withOpacity(0.4))), child: Row(children: [
          const CircleAvatar(backgroundColor: AppColors.gold, child: Icon(Icons.fitness_center, color: Colors.black)),
          const SizedBox(width: 12),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(ex.name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), Text("${ex.sets} sets • ${ex.reps} reps • ${ex.duration}", style: const TextStyle(color: Colors.white70, fontSize: 12))])),
          const Icon(Icons.arrow_forward_ios, color: AppColors.gold, size: 16),
        ]));
      })),
      Padding(padding: const EdgeInsets.all(16), child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: AppColors.gold, foregroundColor: Colors.black, minimumSize: const Size.fromHeight(56), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))), onPressed: () {}, child: const Text("START WORKOUT", style: TextStyle(fontWeight: FontWeight.bold)))),
    ]));
  }
}
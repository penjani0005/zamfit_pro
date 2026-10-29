import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/zamfit_logo.dart';
import '../../workout/presentation/pages/today_workout_page.dart';
import '../../progress/presentation/pages/progress_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.zambiaGreenDark,
      body: SafeArea(child: Padding(padding: const EdgeInsets.all(20),
        child: Column(children: [
          const SizedBox(height: 20),
          const ZamfitLogo(),
          const SizedBox(height: 20),
          const Align(alignment: Alignment.centerLeft, child: Text('Good morning, Alex\nReady to hit your goals today?', style: TextStyle(color: Colors.white70))),
          const SizedBox(height: 24),
          _buildCard(context, 'Workouts', '3 of 5 completed \u2022 28 min', Icons.fitness_center, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TodayWorkoutPage()))),
          const SizedBox(height: 16),
          _buildCard(context, 'Progress', 'Streak: 12 days \u2022 +14% this week', Icons.bar_chart, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProgressPage()))),
          const Spacer(),
          Container(padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20), decoration: BoxDecoration(color: AppColors.zambiaGreenLight, borderRadius: BorderRadius.circular(40), border: Border.all(color: AppColors.gold.withOpacity(0.3))), child: const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Icon(Icons.home, color: AppColors.gold), Icon(Icons.explore, color: Colors.white38), Icon(Icons.history, color: Colors.white38), Icon(Icons.person, color: Colors.white38)]))
        ]))),
    );
  }
  Widget _buildCard(BuildContext c, String t, String sub, IconData i, VoidCallback tap) => InkWell(onTap: tap, child: Container(padding: const EdgeInsets.all(18), decoration: BoxDecoration(color: AppColors.zambiaGreenLight, borderRadius: BorderRadius.circular(22), border: Border.all(color: AppColors.gold.withOpacity(0.2))), child: Row(children: [CircleAvatar(radius: 28, backgroundColor: AppColors.gold, child: Icon(i, color: AppColors.zambiaGreenDark)), const SizedBox(width: 14), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(t, style: const TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold)), const SizedBox(height: 4), Text(sub, style: const TextStyle(color: Colors.white60, fontSize: 12))])), const Icon(Icons.arrow_forward_ios, color: AppColors.gold, size: 16)])));
}

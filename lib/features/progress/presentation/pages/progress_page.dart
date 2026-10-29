import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(padding: const EdgeInsets.all(16), children: [
      const Row(children: [Text("Progress Analytics", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)), Spacer(), Icon(Icons.calendar_month, color: AppColors.gold)]),
      const SizedBox(height: 16),
      Container(padding: const EdgeInsets.all(14), decoration: BoxDecoration(border: Border.all(color: AppColors.gold), borderRadius: BorderRadius.circular(12), color: AppColors.zambiaGreen), child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("🔥 7 Day Streak!", style: TextStyle(color: AppColors.goldLight, fontWeight: FontWeight.bold, fontSize: 18)), Text("Keep it up — new personal best!", style: TextStyle(color: Colors.white70))])),
    ]));
  }
}
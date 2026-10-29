import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/haptic_helper.dart';

class ActiveWorkoutPage extends StatefulWidget { const ActiveWorkoutPage({super.key}); @override State<ActiveWorkoutPage> createState() => _ActiveWorkoutPageState(); }
class _ActiveWorkoutPageState extends State<ActiveWorkoutPage> {
  int seconds = 138; Timer? timer;
  @override void initState() { super.initState(); timer = Timer.periodic(const Duration(seconds: 1), (t) { if(seconds>0){setState(()=>seconds--);} else { HapticHelper.onTimerComplete(); t.cancel(); } }); }
  @override void dispose() { timer?.cancel(); super.dispose(); }
  @override Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [
      const Padding(padding: EdgeInsets.all(16), child: Row(children: [Icon(Icons.arrow_back, color: AppColors.gold), SizedBox(width: 16), Text("Active Workout", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)), Spacer(), Icon(Icons.pause, color: AppColors.gold)])),
      const SizedBox(height: 20),
      Stack(alignment: Alignment.center, children: [SizedBox(width: 220, height: 220, child: CircularProgressIndicator(value: seconds/195, strokeWidth: 8, backgroundColor: Colors.white10, valueColor: const AlwaysStoppedAnimation(AppColors.gold))), Column(children: [Text("${(seconds~/60).toString().padLeft(2,'0')}:${(seconds%60).toString().padLeft(2,'0')}", style: const TextStyle(color: AppColors.goldLight, fontSize: 52, fontWeight: FontWeight.bold)), const Text("of 03:15 • Plank Hold", style: TextStyle(color: Colors.white70))])]),
      const SizedBox(height: 24),
      const Text("Set 2 of 3", style: TextStyle(color: AppColors.goldLight, fontSize: 18, fontWeight: FontWeight.bold)),
    ]));
  }
}
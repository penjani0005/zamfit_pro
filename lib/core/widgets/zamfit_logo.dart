import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_assets.dart';
import '../constants/app_strings.dart';

class ZamfitLogo extends StatelessWidget {
  const ZamfitLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(AppAssets.eagleLogo, width: 32, height: 32,
          errorBuilder: (_,__,___) => const Icon(Icons.shield, color: AppColors.gold)),
        const SizedBox(width: 10),
        const Text(AppStrings.appName, style: TextStyle(color: AppColors.gold, fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/home_page.dart';

class ZamfitApp extends StatelessWidget {
  const ZamfitApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZamFit Pro',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomePage(),
    );
  }
}

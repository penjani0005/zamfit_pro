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
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

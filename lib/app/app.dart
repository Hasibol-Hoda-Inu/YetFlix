import 'package:flutter/material.dart';

import '../ui/screens/home_screen.dart';
import 'app_theme_data.dart';

class YetFlix extends StatelessWidget {
  const YetFlix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      themeMode: ThemeMode.dark,
    );
  }
}

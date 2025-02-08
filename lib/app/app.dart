import 'package:flutter/material.dart';
import 'package:yet_flix/ui/screens/single_movie_screen.dart';

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
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings){
        late Widget widget;
        if(settings.name == SingleMovieScreen.name){
          widget = const SingleMovieScreen();
        }

        return MaterialPageRoute(builder: (context){
          return widget;
        });
      },
    );
  }
}

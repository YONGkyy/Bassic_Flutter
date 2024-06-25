import 'package:flutter/material.dart';
import 'package:bassic_app/basic_module/movie_app/movie_list_screen.dart';


class BasicApp extends StatelessWidget {
  // const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovieListScreen(),
      theme: ThemeData(
        listTileTheme: ListTileThemeData(
          iconColor: Colors.white,
          textColor: Colors.white,
        )
      )
    );
  }
}

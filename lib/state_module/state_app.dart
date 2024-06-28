import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_logic.dart';
import 'state_screen.dart';
import 'theme_logic.dart';

Widget stateAppWithState() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterLogic()),
      ChangeNotifierProvider(create: (context) => ThemeLogic()),
    ],
    child: StateApp(),
  );
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    int theme = context.watch<ThemeLogic>().theme;
    int counter = context.watch<CounterLogic>().counter;
 
    return MaterialApp(
      home: StateScreen(),
      themeMode: theme == 0
          ? ThemeMode.system
          : theme == 1
              ? ThemeMode.light
              : ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 20 + counter.toDouble()),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.cyan,
          ),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 20 + counter.toDouble()),
        ),

        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'features/page/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        // textTheme: TextTheme(
        //   bodyMedium: TextStyle(
        //     color: ColorScheme.fromSeed(
        //       seedColor: const Color(0xFFF01F17),
        //       brightness: Brightness.dark,
        //     ).onSurface,
        //     fontSize: 22,
        //   ),
        // ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            // color: Colors.white,
            // fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF01F17),
          brightness: Brightness.dark,
        ),
      ),

      home: const InputPage(title: 'BMI Calculator'),

      // theme: ThemeData.dark().copyWith(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.deepPurple,
      //     // Hier kannst du die Primärfarbe explizit überschreiben
      //     primary: Colors.blue,
      //   ),
      //   floatingActionButtonTheme: FloatingActionButtonThemeData(
      //     // backgroundColor: const Color(0xFFD81B60),
      //   ),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Color(0xFF0A0E21),
      //     titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      //   ),
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.white, fontSize: 22),
      //   ),
      // ),

      // floatingActionButtonTheme: FloatingActionButtonThemeData(
      //   backgroundColor: Colors.pink[600],
      // ),
      // scaffoldBackgroundColor: Color(0xFF0A0E21),
      // appBarTheme: AppBarTheme(
      //   backgroundColor: Colors.grey[850],
      //   titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      // ),
      // textTheme: TextTheme(
      //   bodyMedium: TextStyle(color: Colors.white, fontSize: 22),
      // ),
    );
  }
}

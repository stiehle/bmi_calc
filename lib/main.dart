import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(
            0xFF55DF16,
          ), // Gleiche Ausgangsfarbe, aber andere Wirkung
          brightness: Brightness.dark,
        ),
      ),
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
      home: const InputPage(title: 'BMI Calculator'),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Widget? get onPresed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Hello, World!'),
            Container(
              color: Theme.of(context).colorScheme.primary,
              child: Text(
                "Ich nutze die Primärfarbe",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

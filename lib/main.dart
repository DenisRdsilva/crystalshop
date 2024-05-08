import 'package:flutter/material.dart';

import 'views/home/home_view.dart';

class Counter {
  final String int;
  final String description;

  const Counter(this.int, this.description);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          useMaterial3: true,
          cardTheme: CardTheme(
            elevation: 4.0,
            color: Colors.white,
            shadowColor: Colors.grey.withOpacity(0.5),
          ),
          hoverColor: Colors.red.withOpacity(0.25),
          primaryColor: const Color(0xFF007BFF),
          secondaryHeaderColor: const Color(0xFFE0F2FE),
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF007BFF),
            onPrimary: Color(0xFFFFFFFF),
            secondary: Color(0xFFE0F2FE),
            onSecondary: Color(0xFF000000),
            error: Color(0xFFD32F2F),
            onError: Color(0xFFFFFFFF),
            surface: Color.fromARGB(255, 136, 180, 227),
            onSurface: Color(0xFF000000),
          )),
    );
  }
}

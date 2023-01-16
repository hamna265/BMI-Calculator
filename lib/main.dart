import 'package:bmical/Screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0a0d22)),
          primaryColor: const Color(0xff0a0d22),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
          scaffoldBackgroundColor: const Color(0xff0a0d22),
          textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:task_management/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(fontSize: 16,color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      
      ),
      
      home: SplashScreen(),

    );
  }
}

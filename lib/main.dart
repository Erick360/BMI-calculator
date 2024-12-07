import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main () => runApp(const BMIcalculator());

class BMIcalculator extends StatelessWidget{
  const BMIcalculator({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Custom Theme
      theme: ThemeData(
        //primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.purple,
        )
      ),
      home: const InputPage(),
    );
  }
}


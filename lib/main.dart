import 'package:flutter/material.dart';
import 'screens/input_page.dart';


void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: Color(0xFF0E1020)),
          scaffoldBackgroundColor: const Color(0xFF0E1020)
      ),
      home: const InputData(),
    );
  }
}



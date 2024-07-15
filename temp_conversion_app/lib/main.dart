import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(TempConversionApp());
}

class TempConversionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Temperature Conversion App',
      theme: ThemeData(
        primaryColor: Color(0xFF0056D2),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF0056D2),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weatherapp/home_page.dart';

//import 'package:weatherapp/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shopping App',
      
      home: HomePage(),
    );
    
  }
}
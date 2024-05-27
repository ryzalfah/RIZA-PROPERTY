import 'package:flutter/material.dart';
import 'package:riza_property/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RIZA PROPERTY",
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

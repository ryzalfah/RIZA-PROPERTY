import 'package:flutter/material.dart';

class newpas extends StatefulWidget {
  const newpas({super.key});

  @override
  State<newpas> createState() => _newpasState();
}

class _newpasState extends State<newpas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(),
    ));
  }
}

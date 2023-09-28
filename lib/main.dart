import 'package:flutter/material.dart';
import 'package:proyecto_lenceria/presentation/screenhomewidgets.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _SearchBarAppState();

}

class _SearchBarAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'AppBar',
      home: ScreenHome()
    );
  }
}



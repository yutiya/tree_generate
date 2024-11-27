import 'package:flutter/material.dart';
import 'color_util.dart';
import 'plant_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexColor("61B688").withOpacity(0.7),
              hexColor("61B688").withOpacity(0.5),
              hexColor("61B688").withOpacity(0.4),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: const [0.0, 0.5, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: const PlantScreen(),
      ),
    );
  }
}

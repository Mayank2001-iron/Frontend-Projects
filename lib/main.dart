import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:flutter_application_1/ModernApartments.dart';
import 'package:flutter_application_1/ModernApartments.dart';
import 'package:flutter_application_1/WaterSpace.dart';
import 'package:flutter/material.dart';


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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


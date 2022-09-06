import 'package:flutter/material.dart';
import 'package:teste_flutter_desktop/resources/constants.dart';
import 'package:teste_flutter_desktop/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Desktop teste',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        canvasColor: secondaryColor,
        primaryColor: primaryColor,
      ),
      home: MainScreenPage(),
    );
  }
}

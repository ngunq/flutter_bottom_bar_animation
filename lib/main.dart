import 'package:flutter/material.dart';
import 'package:flutter_bottom_bar_animation/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation Bottom Bar',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff010102),
        primaryColor: Color.fromRGBO(23, 21, 26, 1.0),
        brightness: Brightness.dark,
      ),
      home: HomeScreen(),
    );
  }
}

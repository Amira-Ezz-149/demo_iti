import 'package:demo_iti/screens/home.dart';
import 'package:flutter/material.dart';

import 'screens/post_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:PostScreen(),
    );
  }
}

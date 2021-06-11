import 'package:flutter/material.dart';
import 'package:flutter_app1/shared/constanse.dart';

import 'layout/home_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
      theme: ThemeData(
        scaffoldBackgroundColor: defaultColor
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mild_app/views/splash_screen_ui.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}

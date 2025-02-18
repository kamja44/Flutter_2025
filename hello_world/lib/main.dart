import 'package:flutter/material.dart';

void main() {
  // Flutter 앱을 실행한다.
  runApp(
    // MateralApp은 항상 최사위에 위치한다.
    // Scaffold는 바로 아래에 위치한다.
    const MaterialApp(
      debugShowCheckedModeBanner: false, // Debugger 배너 숨김
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'Kamja!',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

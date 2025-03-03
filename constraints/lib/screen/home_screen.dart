import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          // 자식 위젯이 어디를 기준으로 정렬할지 모르면 자식의 크기 설정이 무의미하다.
          child: Column(
            children: [Container(height: 50, width: 50, color: Colors.blue)],
          ),
        ),
      ),
    );
  }
}

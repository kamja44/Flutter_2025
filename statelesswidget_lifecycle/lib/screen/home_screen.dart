import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: KamjaWidget()));
  }
}

class KamjaWidget extends StatelessWidget {
  KamjaWidget({super.key}) {
    print('----- 생성자 =====');
  }

  @override
  Widget build(BuildContext context) {
    print('===== 빌드 -----');
    return Container(width: 50, height: 50, color: Colors.red);
  }
}

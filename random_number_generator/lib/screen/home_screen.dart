import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 제목과 아이콘
              _Header(),
              // 숫자
              _Body(),
              // 버튼
              _Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        foregroundColor: Colors.white,
      ),
      child: Text('생성하기'),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            [123, 456, 789]
                .map((e) => e.toString().split(''))
                .map(
                  (item) => Row(
                    children:
                        item
                            .map(
                              (number) => Image.asset(
                                'asset/img/$number.png',
                                width: 50,
                                height: 70,
                              ),
                            )
                            .toList(),
                  ),
                )
                .toList(),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '랜덤 숫자 생성기',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          color: redColor,
          onPressed: () {},
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}

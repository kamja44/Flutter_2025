import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _Top(),
              //이미지
              _Bottom(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(child: Image.asset('asset/img/middle_image.png')),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;

    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          children: [
            Text('U & I', style: TextTheme.displayLarge),
            Text('우리 처음 만난 날', style: TextTheme.bodyLarge),
            Text('2025.03.03', style: TextTheme.bodyMedium),
            IconButton(
              iconSize: 60,
              color: Colors.red,
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.white,
                        height: 300,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (DateTime date) {
                            print(date);
                          },
                          dateOrder: DatePickerDateOrder.ymd,
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.favorite),
            ),
            Text('D+1', style: TextTheme.displayMedium),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Color color = Colors.blue;

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('색상 변경: color: $color');
                if (color == Colors.blue) {
                  color = Colors.red;
                } else {
                  color = Colors.blue;
                }
              },
              child: Text('색상 변경!'),
            ),
            SizedBox(height: 32.0),
            Container(width: 50.0, height: 50.0, color: color),
          ],
        ),
      ),
    );
  }
}

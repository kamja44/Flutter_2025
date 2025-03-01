import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.orange,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.orange,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.orange,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

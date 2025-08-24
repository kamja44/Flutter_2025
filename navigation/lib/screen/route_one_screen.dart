import 'package:flutter/material.dart';
import 'package:navigation/layout/default_layout.dart';
import 'package:navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int number;
  const RouteOneScreen({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Route One Screen',
      children: [
        Text('argument: $number', textAlign: TextAlign.center),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text('Pop'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return RouteTwoScreen();
                },
                settings: RouteSettings(arguments: 789),
              ),
            );
          },
          child: Text('Push'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigation/layout/default_layout.dart';
import 'package:navigation/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return DefaultLayout(
      title: 'RouteTwoScreen',
      children: [
        Text(arguments.toString(), textAlign: TextAlign.center),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('PoP'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/three', arguments: 11111);
          },
          child: Text('Push Route Three'),
        ),
        OutlinedButton(
          onPressed: () {
            // [Home, RouteOne, RouteTwo]
            // push - [Home, RouteOne, RouteTwo, RouteThree]
            // pushR - [Home, RouteOne, RouteThree] => RouteTwo가 삭제되어서 들어감 => pop시 RouteTwo가 아닌 RouteOne으로 감
            // route stack의 top을 제거하고 새로운 route를 추가하는 것
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return RouteThreeScreen();
                },
                settings: RouteSettings(arguments: 99999),
              ),
            );
          },
          child: Text('Push Replacement'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pushReplacementNamed('/three', arguments: 99999);
          },
          child: Text('Push Replacement Named'),
        ),
      ],
    );
  }
}

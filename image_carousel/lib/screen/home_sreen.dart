import 'package:flutter/material.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children:
            [1, 2, 3, 4, 5]
                .map(
                  (e) =>
                      Image.asset('asset/img/image_$e.jpeg', fit: BoxFit.cover),
                )
                .toList(),
      ),
    );
  }
}

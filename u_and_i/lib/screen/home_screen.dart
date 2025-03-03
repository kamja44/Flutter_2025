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
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'U & I',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'parisienne',
                          fontSize: 80,
                        ),
                      ),
                      Text(
                        '우리 처음 만난 날',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'sunflower',
                        ),
                      ),
                      Text(
                        '2025.03.03',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'sunflower',
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        iconSize: 60,
                        color: Colors.red,
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                      ),
                      Text(
                        'D+1',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'sunflower',
                          fontWeight: FontWeight.w700,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset('asset/img/middle_image.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show) kamjaWidget(),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: Text('클릭'),
            ),
          ],
        ),
      ),
    );
  }
}

class kamjaWidget extends StatelessWidget {
  const kamjaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red, width: 50, height: 50);
  }
}

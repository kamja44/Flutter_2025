import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;
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

class kamjaWidget extends StatefulWidget {
  kamjaWidget({super.key}) {
    print('1. Stateful widget Constructor');
  }

  @override
  State<kamjaWidget> createState() {
    print('2. Stateful widget create state');
    return _kamjaWidgetState();
  }
}

class _kamjaWidgetState extends State<kamjaWidget> {
  @override
  void initState() {
    print('3. stateful Widget initstate');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('4. stateful widget didchangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('5. stateful widget build');
    return Container(color: Colors.red, width: 50, height: 50);
  }

  @override
  void deactivate() {
    print('6. stateful widget deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('7. stateful widget dispose');
    super.dispose();
  }
}

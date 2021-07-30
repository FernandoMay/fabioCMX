import 'dart:async';
import 'dart:ui';
import 'package:fabio/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 0, milliseconds: 618, microseconds: 33),
        onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://picsum.photos/200",
              height: 240,
            ),
            Text(
              "Fabio's",
              style: TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}

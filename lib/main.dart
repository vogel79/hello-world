import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/LandingScreen': (BuildContext context) => new LandingScreen()
      },
    ));

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LandingScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/images/splash.jpg'),
      ),
    );
  }
}

class LandingScreen extends StatefulWidget {
  @override
  LandingScreenState createState() => new LandingScreenState();
}

class LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
      ),
      body: new Center(
        child: new Text('Welcome to Home.!'),
      ),
    );
  }
}

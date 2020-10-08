import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'src/welcomePage.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADTM',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new WelcomePage(),
        title: new Text('ADTM',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              color:Colors.redAccent

          ),),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),

        loaderColor: Colors.white
    );
  }
}
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'src/welcomePage.dart';
import 'package:google_fonts/google_fonts.dart';

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
    Widget _title() {
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'AD',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.display1,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: 't',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              TextSpan(
                text: 'M',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ]),
      );
    }

    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new WelcomePage(),
        title: new Text('ADTM',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              color:Colors.deepOrange

          ),),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),

        loaderColor: Colors.white
    );
  }
}




class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("ADTM Login"),
          automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: new Center(
        child: new Text("Done!",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),),

      ),
    );
  }
}
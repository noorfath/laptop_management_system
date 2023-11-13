import 'dart:async';
import 'package:flutter/material.dart';
import 'drawer.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState(); //create and initial state for the screen
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => DrawerEx()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/luminar_logo.png",
                height:450,
                width:450,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

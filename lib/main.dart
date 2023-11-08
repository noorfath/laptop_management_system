
import 'package:flutter/material.dart';
import 'package:laptop_management_system/pages/bottom%20navbar.dart';
import 'package:laptop_management_system/pages/drawer.dart';
import 'package:laptop_management_system/pages/homescreen.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.blue),
          visualDensity: VisualDensity.adaptivePlatformDensity),

      home: DrawerEx(),
    );
  }
}
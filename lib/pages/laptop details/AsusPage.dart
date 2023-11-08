import 'package:flutter/material.dart';

class AsusPage extends StatefulWidget {
  const AsusPage({super.key});

  @override
  State<AsusPage> createState() => _AsusPageState();
}

class _AsusPageState extends State<AsusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Asus"),),);
  }
}

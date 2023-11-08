import 'package:flutter/material.dart';

class DellPage extends StatefulWidget {
  const DellPage({super.key});

  @override
  State<DellPage> createState() => _DellPageState();
}

class _DellPageState extends State<DellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Dell"),),);
  }
}

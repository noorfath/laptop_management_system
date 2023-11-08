import 'package:flutter/material.dart';

class HpPage extends StatefulWidget {
  const HpPage({super.key});

  @override
  State<HpPage> createState() => _HpPageState();
}

class _HpPageState extends State<HpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hp"),),);
  }
}

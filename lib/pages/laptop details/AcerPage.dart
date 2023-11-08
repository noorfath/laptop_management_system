import 'package:flutter/material.dart';

class AcerPage extends StatefulWidget {
  const AcerPage({super.key});

  @override
  State<AcerPage> createState() => _AcerPageState();
}

class _AcerPageState extends State<AcerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Acer"),),);
  }
}

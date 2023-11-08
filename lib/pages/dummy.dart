import 'package:flutter/material.dart';
class LaptopDetailsPage extends StatelessWidget {
  final String brand;
  final String modelName;
  final String specs;
  final String price;

  LaptopDetailsPage({
    required this.brand,
    required this.modelName,
    required this.specs,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$brand Laptop Details'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          ListTile(
            title: Text('Brand'),
            subtitle: Text(brand),
          ),
          ListTile(
            title: Text('Model Name'),
            subtitle: Text(modelName),
          ),
          ListTile(
            title: Text('Specifications'),
            subtitle: Text(specs),
          ),
          ListTile(
            title: Text('Price'),
            subtitle: Text(price),
          ),
          // Add more ListTile widgets for additional details if needed
        ],
      ),
    );
  }
}

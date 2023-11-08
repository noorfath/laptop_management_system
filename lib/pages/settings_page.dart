import 'package:flutter/material.dart';
import 'package:laptop_management_system/pages/homescreen.dart';

void main() {
  runApp(SettingsApp());
}

class SettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool pushNotifications = true;
  bool darkMode = false;
  double fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homescrren())),
              icon: Icon(Icons.arrow_back)),
          title: Text('Settings'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            ListTile(
              title: Text('Push Notifications'),
              trailing: Switch(
                value: pushNotifications,
                onChanged: (value) {
                  setState(() {
                    pushNotifications = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: darkMode,
                onChanged: (value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Font Size'),
              trailing: DropdownButton<double>(
                value: fontSize,
                items: [12.0, 16.0, 20.0, 24.0]
                    .map((size) => DropdownMenuItem<double>(
                  value: size,
                  child: Text(size.toString()),
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    fontSize = value!;
                  });
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Reset to Default'),
              onTap: () {
                setState(() {
                  pushNotifications = true;
                  darkMode = false;
                  fontSize = 16.0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
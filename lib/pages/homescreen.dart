import 'package:flutter/material.dart';
import 'package:laptop_management_system/pages/settings_page.dart';

class Homescrren extends StatelessWidget {
  const Homescrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Luminar Technolab"),
      backgroundColor: Colors.deepPurpleAccent,
       actions: [
        // IconButton(
      //     onPressed: (){},
      //     icon: Icon(Icons.notifications)),
    IconButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsApp()));

    },
        icon: Icon(Icons.settings_rounded))
    ],),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage("assets/profile_pic.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle navigation to the home screen
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle navigation to the settings screen
                Navigator.pop(context); // Close the drawer
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                // Handle logout
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}

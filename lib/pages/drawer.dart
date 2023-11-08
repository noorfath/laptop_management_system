import 'package:flutter/material.dart';
import 'package:laptop_management_system/pages/Homescreen.dart';

import 'bottom navbar.dart';
void main(){runApp(MaterialApp(home: DrawerEx(),));}
class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Add action for more options
            },
          ),
        ],
      ),
      //Theme(
      //data: Theme.of(context).copyWith(canvasColor: Colors.green),
      // child:
      //endDrawer:
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.deepPurpleAccent
                  // image: DecorationImage(
                  //     fit: BoxFit.cover,
                  //     image: AssetImage("assets/icons/purplebg.jpg"))
                     ),
              accountName: const Text("My Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text("myname@gmail.com"),
              currentAccountPicture:CircleAvatar(
                backgroundImage:AssetImage("assets/icons/Woman.png"))

              ),

            ListTile(
              onTap: (){},
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            const ListTile(
              leading: Icon(Icons.menu),
              title: Text("Home"),
            ),

          ],
        ),
      ), body: BottomNavBar(),
      // ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:laptop_management_system/pages/homescreen.dart';
import 'package:laptop_management_system/pages/settings.dart';
import 'bottom navbar.dart';
void main(){runApp(MaterialApp(home: DrawerEx(),));}
class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      //Theme(
      //data: Theme.of(context).copyWith(canvasColor: Colors.green),
      // child:
      //endDrawer:
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent
                  ),
              accountName: Text("My Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("myname@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/icons/woman.jpg"),
                 ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DrawerEx()));
                }),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings",style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsPage()));

              },
            ),


          ],
        ),
      ), body: BottomNavBar(),
      // ),
    );
  }
}
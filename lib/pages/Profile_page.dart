import 'package:flutter/material.dart';

import 'login.dart';

void main(){
  runApp(MaterialApp(home: Profile_page(),));
}
class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profil_pageState();
}

class _Profil_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/icons/woman.jpg'), // Replace with your image asset
              ),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'john.doe@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent
              ),
              onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyLogin()));
              },
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}

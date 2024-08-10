import 'package:flutter/material.dart';
import 'profile.dart';
import 'password_change.dart';
import 'delete_account.dart';
import 'select_sound.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          },
        ),
        title: Text('Settings', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.lock, color: Colors.white),
              title: Text('Select Sound', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SoundSetting()));
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.white),
              title: Text('Change Password', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordChange()));
              },
            ),
            Divider(color: Colors.white), // Moved outside the ListTile
            ListTile(
              leading: Icon(Icons.delete_forever, color: Colors.white),
              title: Text('Delete Account', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => deletePage()));
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.language, color: Colors.white),
              title: Text('Change Language', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Implement change language functionality
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.white),
              title: Text('Notification Settings', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Implement notification settings functionality
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.white),
              title: Text('About', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navigate to about page
              },
            ),
          ],
        ),
      ),
    );
  }
}

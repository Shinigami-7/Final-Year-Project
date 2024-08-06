import 'package:flutter/material.dart';
import 'profile.dart';

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
              leading: Icon(Icons.volume_up, color: Colors.white),
              title: Text('Select Sound', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navigate to select sound page or implement a dialog
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.white),
              title: Text('Change Password', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navigate to change password page
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.delete_forever, color: Colors.white),
              title: Text('Delete Account', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Implement delete account functionality
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

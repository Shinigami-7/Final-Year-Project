import 'package:flutter/material.dart';
import 'notification.dart';
import 'home.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
            child: const Center(
              child: Text('This is the Report page', style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
          Positioned(
            left: 20,
            top: 40,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
          ),
          Positioned(
            right: 20,
            top: 40,
            child: IconButton(
              icon: Icon(Icons.notification_add, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

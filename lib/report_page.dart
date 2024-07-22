import 'package:flutter/material.dart';
 logout
import 'notification.dart';

 main
class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
 logout
          IconButton(
            icon: Icon(Icons.notification_add, color: Colors.blue,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },

          Padding(
            padding: const EdgeInsets.all(20),
            child: const Icon(Icons.notifications, color: Colors.blue),
 main
          ),
        ],
      ),
      body: const Center(
        child: Text('This is the Report page'),
      ),
    );
  }
}
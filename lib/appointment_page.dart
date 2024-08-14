import 'package:flutter/material.dart';
import 'notification.dart';
import 'home.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
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
        title: Text("Appointment", style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Text('What is the purpose', style: TextStyle(fontSize: 18, color: Colors.white)),
                  Container(
                    width: 200,
                    child: TextField(
                      autofocus: false,

                      decoration: InputDecoration(

                        hintText: 'for checkup',

                      ),
                    ),
                  )
                ],
              ),

          ),
        ],
      ),
    );
  }
}

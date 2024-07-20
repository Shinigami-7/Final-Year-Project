import 'package:flutter/material.dart';
import 'package:projectk/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appointments',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Appointment(),
    );
  }
}

class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointments'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> Profile()),
              );
              // Handle notification button press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppointmentCard(
              date: 'Today',
              time: '11:45 AM',
              title: 'Eye Checkup',
              location: 'Dhristi Eye Care',
              color: Colors.brown,
            ),
            SizedBox(height: 16.0),
            AppointmentCard(
              date: 'June 30',
              time: '3:00 PM',
              title: 'Blood Test',
              location: 'Teaching Hospital',
              color: Colors.green,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Treatment',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Handle bottom navigation bar item taps
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle floating action button press
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final String date;
  final String time;
  final String title;
  final String location;
  final Color color;

  AppointmentCard({
    required this.date,
    required this.time,
    required this.title,
    required this.location,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              time,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Text(
              location,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

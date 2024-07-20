import 'package:flutter/material.dart';
import 'package:projectk/appointment.dart';
import 'package:projectk/profile.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
      ),
      home: const Appointment(),
    );
  }
}

class Treatment extends StatelessWidget {
  const Treatment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              }
              );
              // Handle notification button press
            },
          ),
        ],

      ),
      body: const Center(
        child: Text('This is the Treatment page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Treatment',
          ),
        ],
      ),
    );
  }
}

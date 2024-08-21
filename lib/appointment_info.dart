// appointment_page.dart
import 'package:flutter/material.dart';

class AppointmentInfo extends StatelessWidget {
  final String appointmentName;
  final String date;
  final String time;
  final String doctorName;
  final String hospitalName;
  final String details;

  const AppointmentInfo({
    Key? key,
    required this.appointmentName,
    required this.date,
    required this.time,
    required this.doctorName,
    required this.hospitalName,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Details'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Appointment Name: $appointmentName",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Date: $date",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Time: $time",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Doctor Name: $doctorName",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Hospital/Medical Name: $hospitalName",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Details: $details",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

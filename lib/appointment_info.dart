import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import intl for date formatting

class AppointmentInfo extends StatelessWidget {
  final String appointmentName;
  final DateTime date;
  final TimeOfDay time;
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
    String formattedDate = DateFormat('d MMMM, yyyy').format(date);
    String formattedTime = time.format(context);

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
              'Appointment Name: $appointmentName',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Date: $formattedDate',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Time: $formattedTime',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Doctor: $doctorName',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Hospital: $hospitalName',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Details: $details',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

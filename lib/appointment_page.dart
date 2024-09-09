import 'package:flutter/material.dart';
import 'package:projectk/add_appointment.dart';
import 'package:projectk/appointment_info.dart';
import 'package:intl/intl.dart'; // Import intl for date formatting
import 'notification.dart';

class Appointment extends StatelessWidget {
  final String appointmentName;
  final DateTime date;
  final TimeOfDay time;
  final String doctorName;
  final String hospitalName;
  final String details;

  const Appointment({
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
    // Define a default date (example: 27 August 2024)
    String formattedDate = DateFormat('d MMMM, yyyy').format(date);
    String formattedTime = time.format(context); // 5:44 AM/PM

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
        title: Text(
          "Appointment",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        child: GestureDetector(
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '$appointmentName \n$doctorName',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        '$formattedTime \n$formattedDate',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            // Navigate to AppointmentInfo and pass the DateTime and TimeOfDay objects
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AppointmentInfo(
                  appointmentName: appointmentName,
                  date: date, // Pass DateTime object
                  time: time, // Pass TimeOfDay object
                  doctorName: doctorName,
                  hospitalName: hospitalName,
                  details: details,
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddAppointment()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

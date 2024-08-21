// add_appointment.dart
import 'package:flutter/material.dart';
import 'package:projectk/appointment_info.dart';
import 'package:projectk/appointment_page.dart';

class AddAppointment extends StatefulWidget {
  const AddAppointment({super.key});

  @override
  State<AddAppointment> createState() => _AddAppointmentState();
}

class _AddAppointmentState extends State<AddAppointment> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();
  TextEditingController _appointmentNameController = TextEditingController();
  TextEditingController _doctorNameController = TextEditingController();
  TextEditingController _hospitalNameController = TextEditingController();
  TextEditingController _detailsController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        _dateController.text =
        "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        _timeController.text = pickedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Appointment'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name of Appointment",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _appointmentNameController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Eye Checkup",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Date",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: 'DD/MM/YYYY',
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                    readOnly: true,
                    onTap: () => _selectDate(context),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Pick up Time",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _timeController,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                      hintText: 'Select Time',
                      suffixIcon: Icon(Icons.access_time),
                    ),
                    readOnly: true,
                    onTap: () => _selectTime(context),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Doctor Name",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _doctorNameController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "DR. Sanduik Ruit",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hospital/Medical Name",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _hospitalNameController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Dristi",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Details",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _detailsController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    minLines: 1,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your description here',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppointmentInfo(
                        appointmentName: _appointmentNameController.text,
                        date: _dateController.text,
                        time: _timeController.text,
                        doctorName: _doctorNameController.text,
                        hospitalName: _hospitalNameController.text,
                        details: _detailsController.text,
                      ),
                    ),
                  );
                },
                child: Text("Done"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projectk/appointment_page.dart';

class AddAppointment extends StatefulWidget {
  const AddAppointment({super.key});

  @override
  State<AddAppointment> createState() => _AddAppointmentState();
}

class _AddAppointmentState extends State<AddAppointment> {
  TextEditingController _dateController = TextEditingController();
  TimeOfDay? timeList;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        _dateController.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          timeList = value;
        });
      }
    });
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 15),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name of Appointment",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Container(
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "Eye Checkup",
                          hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Date",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Container(
                      width: 300,
                      child: TextField(
                        controller: _dateController,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'DD/MM/YYYY',
                          suffixIcon: Icon(Icons.calendar_today),
                        ),
                        readOnly: true, // Prevent manual input
                        onTap: () => _selectDate(context),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Pick up Time",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),


                    MaterialButton(
                      onPressed: _showTimePicker,
                      child: Text(
                        timeList != null ? timeList!.format(context) : 'Select Time',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Appointment()));
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

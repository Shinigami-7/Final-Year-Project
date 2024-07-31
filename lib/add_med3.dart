import 'package:flutter/material.dart';
import 'package:projectk/treatment_page.dart';

class AddMed3 extends StatefulWidget {
  const AddMed3({super.key});

  @override
  State<AddMed3> createState() => _AddMed3State();
}

class _AddMed3State extends State<AddMed3> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  TimeOfDay _timeOfDay1 = TimeOfDay.now();
  TimeOfDay _timeOfDay2 = TimeOfDay.now();
  void _showtime() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  void _showtime1() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay1 = value!;
      });
    });
  }

  void _showtime2() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay2 = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Medicine add Page3',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/medicine.png',
                  height: 250,
                  width: 250,
                ),
              ),
              Text("Set the reminder time for your \nmedication",
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "First intake",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.access_time_outlined),
                          MaterialButton(
                            onPressed: _showtime,
                            child: Container(
                                child: Text(
                              _timeOfDay.format(context).toString(),
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Second intake",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.access_time_outlined),
                          MaterialButton(
                            onPressed: _showtime1,
                            child: Container(
                                child: Text(
                              _timeOfDay1.format(context).toString(),
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Third intake",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.access_time_outlined),
                          MaterialButton(
                            onPressed: _showtime2,
                            child: Container(
                                child: Text(
                              _timeOfDay2.format(context).toString(),
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, right: 20, left: 20),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddMed3()),
                      );
                    },
                    child: Text("Next"),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

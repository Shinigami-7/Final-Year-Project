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
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
      if (value != null) {
        setState(() {
          _timeOfDay = value;
        });
      }
    });
  }

  void _showtime1() {
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
      if (value != null) {
        setState(() {
          _timeOfDay1 = value;
        });
      }
    });
  }

  void _showtime2() {
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
      if (value != null) {
        setState(() {
          _timeOfDay2 = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine add Page3'),
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
            Text(
              "Set the reminder time for your \nmedication",
              style: TextStyle(fontSize: 20, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "First intake",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined),
                      MaterialButton(
                        onPressed: _showtime,
                        child: Text(
                          _timeOfDay.format(context).toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Row(
                          children: [
                            Text("Dose"),
                            SizedBox(width: 8),
                            Container(
                              width: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: "1",

                                ),
                              ),
                            ),
                            Text("pill(s)")

                          ],
                        ),
                      ),

                    ],
                  ),
                  Text(
                    "Second intake",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined),
                      MaterialButton(
                        onPressed: _showtime1,
                        child: Text(
                          _timeOfDay1.format(context).toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      // SizedBox(width: 150,),
                      Spacer(),
                         Padding(
                           padding: const EdgeInsets.only(right: 25),
                           child: Row(
                            children: [
                              Text("Dose"),
                              SizedBox(width: 8),
                              Container(
                                width: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: "1",
                                ),
                              ),
                              ),
                              Text("pill(s)")

                            ],
                           ),
                         ),
                    ],
                  ),
                  Text(
                    "Third intake",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined),
                      MaterialButton(
                        onPressed: _showtime2,
                        child: Text(
                          _timeOfDay2.format(context).toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Row(
                          children: [
                            Text("Dose"),
                            SizedBox(width: 8),
                            Container(
                              width: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: "1",

                                ),
                              ),
                            ),
                            Text("pill(s)")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height:200 ,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TreatmentPage()),
                    );
                  },
                  child: Text("Done"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'treatment_page.dart';

class AddMed3_1 extends StatefulWidget {
  final int time;

  const AddMed3_1({ required this.time});

  @override
  State<AddMed3_1> createState() => _AddMed3State();
}

class _AddMed3State extends State<AddMed3_1> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  TimeOfDay _timeOfDay1 = TimeOfDay(hour: 0 , minute: 0);
  TimeOfDay _timeOfDay2 = TimeOfDay(hour: 0 , minute: 0);
  int value = 0;



  void _showTimePicker(Function(TimeOfDay) onSelected) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          onSelected(value);
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

            for(int i=0;i<widget.time;i++)
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
                          onPressed: () => _showTimePicker((value) {
                            _timeOfDay = value;
                          }),
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
                                  onChanged: (value) {
                                    setState(() {
                                      value = value;
                                    });
                                  },
                                ),
                              ),
                              Text("pill(s)"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),



            Positioned(
              bottom: 16.0,
              child: Container(
                height: 50,
                width: 350,
                child: Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TreatmentPage(
                                  value: value, firstIntakeTime: _timeOfDay, secondIntakeTime: _timeOfDay1, thirdIntakeTime: _timeOfDay2,)));
                    },
                    child: Text("Done"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'treatment_page.dart';

class AddMed3_1 extends StatefulWidget {
  final int time;
  final String UserInput;

  const AddMed3_1({required this.time, required this.UserInput});

  @override
  State<AddMed3_1> createState() => _AddMed3State();
}

class _AddMed3State extends State<AddMed3_1> {
  late List<TimeOfDay?> timeList;
  late List<int> doseList;

  @override
  void initState() {
    super.initState();
    timeList = List<TimeOfDay?>.filled(widget.time, null);
    doseList = List<int>.filled(widget.time, 0);
  }

  void _showTimePicker(int index) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          timeList[index] = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Add Page 3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/medicine.png',
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Text(
                    "Set the reminder times for your \nmedication",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  for (int i = 0; i < widget.time; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Intake ${i + 1}",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_outlined),
                              MaterialButton(
                                onPressed: () => _showTimePicker(i),
                                child: Text(
                                  timeList[i] != null ? timeList[i]!.format(context) : 'Select Time',
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
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          hintText: "1",
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            doseList[i] = int.tryParse(value) ?? 0;
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
                  SizedBox(height: 20),
                  // Text(widget.UserInput),
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
                      builder: (context) => TreatmentPage(
                        doses: doseList,
                        times: timeList,
                        UserInput: widget.UserInput,
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

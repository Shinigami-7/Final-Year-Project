import 'package:flutter/material.dart';
import 'package:projectk/add_med.dart';
import 'profile.dart';

class TreatmentPage extends StatelessWidget {
  final int value;
  final TimeOfDay firstIntakeTime;
  final TimeOfDay secondIntakeTime;
  final TimeOfDay thirdIntakeTime;
  TreatmentPage(
      {required this.value,
      required this.firstIntakeTime,
      required this.secondIntakeTime,
      required this.thirdIntakeTime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Treatment",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/images/med.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mylod 2.5",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey),
                            ),
                            Text(
                              "High blood pressure",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 15),
                            ),
                            Text(
                              "Dose : ${value}",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 15),
                            ),
                            SingleChildScrollView(
                              child: Row(
                                children: [
                                  
                                  SingleChildScrollView(
                                    child: Text(
                                      (firstIntakeTime.format(context)),
                                      style: TextStyle(
                                          color: Colors.blueGrey, fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    (secondIntakeTime.format(context)),
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    (thirdIntakeTime.format(context)),
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: CircularProgressIndicator(
                          value: 0.7,
                          backgroundColor: Colors.grey,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.yellow),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/images/med.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Metformin",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey),
                            ),
                            Text(
                              "Diabetes type 2",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 15),
                            ),
                            Text(
                              "11 AM",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: CircularProgressIndicator(
                          value: 0.2,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30.0, // Adjust the position as needed
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMed()),
                );
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

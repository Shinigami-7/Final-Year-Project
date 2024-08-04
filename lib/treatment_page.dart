import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectk/add_med.dart';
import 'profile.dart';
import 'home.dart';

class TreatmentPage extends StatefulWidget {
  const TreatmentPage({Key? key}) : super(key: key);

  @override
  State<TreatmentPage> createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 20),
            child: IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20), // Matching padding with ReportPage
            child: Column(
              children: [
                Container(
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
                              "8:00 AM and 8:00 PM",
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
                          value: 0.7,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
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
              ],
            ),
          ),
          Positioned(
            bottom: 30.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMed()),
                );
              },
              backgroundColor: Colors.white,
              child: Icon(Icons.add, color: Colors.lightBlueAccent),
            ),
          ),
        ],
      ),
    );
  }
}

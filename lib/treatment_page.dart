import 'package:flutter/material.dart';
import 'package:projectk/profile.dart';
import 'add_med.dart';

class TreatmentPage extends StatelessWidget {
  final List<TimeOfDay?> times;
  final List<int> doses;

  TreatmentPage({
    required this.times,
    required this.doses,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Treatment",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
          
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(icon: Icon(Icons.person, color: Colors.lightBlue,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
          },),
        )],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130, // Adjust height if needed
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                          SizedBox(height: 10),
                          Container(
                            height: 40, // Adjust height as needed
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for (int i = 0; i < times.length; i++)
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        times[i] != null
                                            ? times[i]!.format(context)
                                            : 'No time set',
                                        style: TextStyle(
                                            color: Colors.blueGrey, fontSize: 15),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Dose: ${doses.isNotEmpty ? doses[0] : 'N/A'} pill(s)",
                            style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: CircularProgressIndicator(
                        value: doses.isNotEmpty ? doses[0] / 10.0 : 0, // Example, update as needed
                        backgroundColor: Colors.grey,
                        valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.yellow),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Additional medications and times can be added here in a similar fashion
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMed()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

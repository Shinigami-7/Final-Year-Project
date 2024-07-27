import 'package:flutter/material.dart';
import 'package:projectk/next.dart';
import 'package:projectk/treatment_page.dart';

class AddMed extends StatefulWidget {
  @override
  State<AddMed> createState() => _AddMedState();
}

class _AddMedState extends State<AddMed> {
  String? selectedMedication;

  final List<String> medications = [
    "Mylod 2.5",
    "Mylod 5",
    "Metformin",
    "Aspirin",
    "Ibuprofen",
    "Paracetamol",
    "Amoxicillin",
    "Lisinopril",
    "Metoprolol",
    "Simvastatin",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine add Page'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/medicine.png',
              height: 250,
              width: 250,
            ),
          ),
          Text(
            "Select a medication for reminder",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Divider(
              color: Colors.blue,
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50),
            child: Row(
              children: [
                Text(
                  "Unit",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                DropdownButton<String>(
                  hint: Text("Select Medicine"),
                  value: selectedMedication,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedMedication = newValue;
                    });
                  },
                  items: medications.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, right: 20, left: 20),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddMed2()),
                  );
                },
                child: Text("Next"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

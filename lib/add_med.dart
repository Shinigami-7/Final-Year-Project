import 'package:flutter/material.dart';
import 'package:projectk/add_med2.dart';

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
        title: Text('Medicine Add Page'),
      ),
      body: Column(
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
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
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

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, right: 20, left: 20),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedMedication != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddMed2(
                          userInput: selectedMedication!,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please select a medication")),
                    );
                  }
                },
                child: Text("Next"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

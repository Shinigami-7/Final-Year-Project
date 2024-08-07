import 'package:flutter/material.dart';
import 'package:projectk/add_med3(1).dart';
import 'package:projectk/add_med3(2).dart';
import 'package:projectk/add_med3.dart';

class AddMed2 extends StatefulWidget {


  @override
  State<AddMed2> createState() => _AddMed2State();
}

class _AddMed2State extends State<AddMed2> {
  int? _value = 1;
  void _navigate() {
    if (_value != null) {
      switch (_value) {
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMed3_1()),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMed3_2()),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMed3()),
          );
          break;
      }
    }
  }

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
            "How often do you take this\n medication?",
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
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Once daily",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Radio<int?>(
                      value: 1,
                      groupValue: _value,
                      onChanged: (int? value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Twice daily",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Radio<int?>(
                      value: 2,
                      groupValue: _value,
                      onChanged: (int? value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Thrice daily",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Radio<int?>(
                      value: 3,
                      groupValue: _value,
                      onChanged: (int? value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(_value.toString()),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, right: 20, left: 20),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _navigate,
                child: Text("Next"),
              ),
            ),
          ),

        ],
        
      ),
    );
  }
}

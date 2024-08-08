import 'package:flutter/material.dart';
import 'package:projectk/add_med3(1).dart';
import 'package:projectk/add_med3(2).dart';
import 'package:projectk/add_med3.dart';

class AddMed2 extends StatefulWidget {
  @override
  State<AddMed2> createState() => _AddMed2State();
}

class _AddMed2State extends State<AddMed2> {
  int? _value = 0;
  void _navigate() {
    if (_value != null) {
      switch (_value) {
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddMed3_1(
                      time: _value!,
                    )),
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
        default:
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddMed3_1(
                        time: _value!,
                      )));
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
          SingleChildScrollView(
              child: Padding(
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
                Row(
                  children: [
                    Text(
                      "Custom",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "1",
                          ),
                          onChanged: (value) {
                            setState(() {
                              _value = int.tryParse(value);
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Text(_value.toString()),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _navigate,
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          )
          )
        ],
      ),
    );
  }
}

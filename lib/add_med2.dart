import 'package:flutter/material.dart';
import 'package:projectk/add_med3.dart';
import 'package:projectk/add_med3_custom.dart';

class AddMed2 extends StatefulWidget {
  @override
  State<AddMed2> createState() => _AddMed2State();
}

class _AddMed2State extends State<AddMed2> {
  int? _value = 0;

  void _navigate(){
    if(_value! > 3)
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMed3_1_Custom(time: _value!)));
    else
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMed3_1(time: _value!)));


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine add Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                "How often do you take this\n medication?",
                style: TextStyle(fontSize: 20, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Divider(
                  color: Colors.blue,
                  thickness: 2,
                ),
              ),
              Column(
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
                ],
              ),
              SizedBox(height: 20),
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
        ),
      ),
    );
  }
}

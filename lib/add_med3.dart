import 'package:flutter/material.dart';

class AddMed3 extends StatefulWidget {
  const AddMed3({super.key});

  @override
  State<AddMed3> createState() => _AddMed3State();
}

class _AddMed3State extends State<AddMed3> {
  TimeOfDay _timeOfDay=TimeOfDay.now();
  void _showtime(){
    showTimePicker(context: context, initialTime: TimeOfDay.now()
    ).then((value){
      setState(() {
        _timeOfDay=value!;
      });
    });
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Medicine add Page3', ),
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
Text("Set the reminder time for your \nmedication",style: TextStyle(fontSize: 20, color: Colors.grey)
          ),
          Text("First intake",style: TextStyle(fontSize: 18, color: Colors.grey),),
          Container(
            child: Row(
              children: [

                MaterialButton(
                  onPressed: _showtime,
                  child: Container(
                      child: Text(_timeOfDay.format(context).toString(),style: TextStyle(fontSize: 20),)),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [

                MaterialButton(
                  onPressed: _showtime,
                  child: Container(
                      child: Text(_timeOfDay.format(context).toString(),style: TextStyle(fontSize: 20),)),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [

                MaterialButton(
                  onPressed: _showtime,
                  child: Container(
                      child: Text(_timeOfDay.format(context).toString(),style: TextStyle(fontSize: 20),)),
                ),
              ],
            ),
          ),
        ],

      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projectk/profile.dart';
class TreatmentPage extends StatelessWidget {
  const TreatmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          IconButton(
            icon: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.person, color: Colors.blue),
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
      body: const Center(
        child: Text('This is the Treatment page'),
      ),
    );
  }
}
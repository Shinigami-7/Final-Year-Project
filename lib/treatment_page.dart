import 'package:flutter/material.dart';
 logout
import 'profile.dart';

import 'package:projectk/profile.dart';
 main
class TreatmentPage extends StatelessWidget {
  const TreatmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
 logout
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.blue,),
            onPressed: () {
              Navigator.push(
                context,


        actions: [
          IconButton(
            icon: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.person, color: Colors.blue),
            ),
            onPressed: () {
              Navigator.push(
                context,

 main
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
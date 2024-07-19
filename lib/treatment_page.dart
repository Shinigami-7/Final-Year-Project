import 'package:flutter/material.dart';
class TreatmentPage extends StatelessWidget {
  const TreatmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: const Icon(Icons.person, color: Colors.blue),
          ),
        ],
      ),
      body: const Center(
        child: Text('This is the Treatment page'),
      ),
    );
  }
}
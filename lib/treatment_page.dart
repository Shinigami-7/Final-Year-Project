import 'package:flutter/material.dart';
class TreatmentPage extends StatelessWidget {
  const TreatmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treatment Page'),
      ),
      body: const Center(
        child: Text('This is the Treatment page'),
      ),
    );
  }
}
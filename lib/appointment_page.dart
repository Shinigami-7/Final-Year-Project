import 'package:flutter/material.dart';
class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointment Page'),
      ),
      body: const Center(
        child: Text('This is the Appointment page'),
      ),
    );
  }
}
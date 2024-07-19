import 'package:flutter/material.dart';
class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: const Icon(Icons.notifications, color: Colors.blue),
          ),
        ],
      ),
      body: const Center(
        child: Text('This is the Report page'),
      ),
    );
  }
}
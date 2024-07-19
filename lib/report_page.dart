import 'package:flutter/material.dart';
class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Page'),
      ),
      body: const Center(
        child: Text('This is the Report page'),
      ),
    );
  }
}
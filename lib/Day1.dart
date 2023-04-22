import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 1'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 10),
        child: Text(
          'Exercise',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
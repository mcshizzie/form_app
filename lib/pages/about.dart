import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text('About Page'),
        backgroundColor: Colors.redAccent[700],
        centerTitle: true,
      ),
    );
  }
}
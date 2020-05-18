import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('This is the landing'),
      ),
    );
  }
}
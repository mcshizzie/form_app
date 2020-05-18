import 'package:flutter/material.dart';
import 'package:form_app/pages/setup_form_2.dart';

class AccSetup2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Setup'),
        backgroundColor: Colors.redAccent[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: SetupForm2(),
      ),
    );
  }
}
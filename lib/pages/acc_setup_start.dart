import 'package:flutter/material.dart';
import 'package:form_app/pages/setup_form.dart';


class AccSetup1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Now'),
        backgroundColor: Colors.redAccent[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: SetupForm(),
      ),
    );
  }
}
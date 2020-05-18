import 'package:flutter/material.dart';
import 'package:form_app/pages/sign_in_form.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: Colors.redAccent[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SignInForm(),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  @override
 Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
        Form(
          autovalidate: true,
          key: _formKey,
          child: Column(
            children: <Widget>[
              // Full Name Field
              SizedBox(
                height: 100,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please input Reg No.';
                  }
                  if (value.length < 7) {
                    return "Input must have more than 6 characters!";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Reg No.",
                    hintText: "e.g 1901163",
                    helperText: 'Requires atleast 7 characters'),
                textInputAction: TextInputAction.next,
              ),


              SizedBox(
                height: 20,
              ),

              // Password Field
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (value.length < 9) {
                    return "Requires atleast 8 characters";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "**********",
                    suffixIcon: Icon(Icons.lock),
                    helperText: 'Requires atleast 8 characters'),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 16,
              ),

              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Completing Signin'),
                    ));
                  } else {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("This is not valid."),
                    ));
                  }
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ],
        );
      
  }
}
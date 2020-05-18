import 'package:flutter/material.dart';

class SetupForm2 extends StatefulWidget {
  @override
  _SetupForm2State createState() => _SetupForm2State();
}

class _SetupForm2State extends State<SetupForm2> {
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
              SizedBox(
                height: 50,
              ),

              // Level Field
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please input level';
                  }
                  if (value.length < 3) {
                    return "Input must have more than 2 characters!";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Level",
                    hintText: "e.g 100",
                    helperText: 'Requires atleast 3 characters'),
                textInputAction: TextInputAction.next,
              ),

              SizedBox(
                height: 16,
              ),


              // Reg Number Field
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
              

              // Matric Number Field
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please input Matric No.';
                  }
                  if (value.length < 10) {
                    return "Input must have more than 10 characters!";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Matric No.",
                    hintText: "e.g 19CD004610",
                    helperText: 'Requires atleast 10 characters'),
                textInputAction: TextInputAction.next,
              ),

              // Department Field
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter department';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Department",
                    hintText: "Computer Science",
                    helperText: ''),
                textInputAction: TextInputAction.next,
              ),

              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter college';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "College", hintText: "CPAS", helperText: ''),
                textInputAction: TextInputAction.next,
              ),

              SizedBox(
                height: 20,
              ),

              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Completing Signup'),
                    ));
                  } else {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("This is not valid."),
                    ));
                  }
                  Navigator.pushNamed(context, '/signin');
                },
                child: Text('Create Account'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

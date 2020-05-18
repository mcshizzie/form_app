import 'package:flutter/material.dart';

class SetupForm extends StatefulWidget {
  @override
  _SetupFormState createState() => _SetupFormState();
}

class _SetupFormState extends State<SetupForm> {
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
                    return 'Please enter some text';
                  }
                  if (value.length < 4) {
                    return "name must have more than 4 characters!";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "e.g John Doe",
                    helperText: 'Requires atleast 6 characters'),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 16,
              ),

              // Webmail Field
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (value.length < 10) {
                    return "Input atleast 10 characters";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Webmail",
                    hintText: "e.g abc.def@lmu.edu.ng",
                    helperText: 'Requires over 10 characters in lenght'),
                textInputAction: TextInputAction.next,
              ),

              SizedBox(
                height: 16,
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

// Confirm Password Field
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (value.length < 9) {
                    return "name must have more than 2 characters!";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "**********",
                    suffixIcon: Icon(Icons.lock),
                    helperText: 'Requires atleast 8 characters'),
                textInputAction: TextInputAction.done,
              ),

              SizedBox(
                height: 20,
              ),
              Text('Already have an account?'),
              Text(
                'Sign in',
                style: TextStyle(
                  decorationColor: Colors.blue,
                ),
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
                  Navigator.pushNamed(context, '/signup2');
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

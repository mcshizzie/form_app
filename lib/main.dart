import 'package:flutter/material.dart';
import 'package:form_app/pages/home.dart';
import 'package:form_app/pages/landing.dart';
import 'package:form_app/pages/about.dart';
import 'package:form_app/pages/sign_in.dart';
import 'package:form_app/pages/acc_setup_start.dart';
import 'package:form_app/pages/acc_setup_next.dart';
import 'package:form_app/pages/acc_setup_final.dart';

void main() => runApp(MaterialApp(
  //home: Landing(),
  initialRoute: '/signup1',
  routes: {
    '/': (context) => Landing(),
    '/home': (context) => Home(),
    '/about': (context) => About(),
    '/signin': (context) => SignIn(),
    '/signup1': (context) => AccSetup1(),
    '/signup2': (context) => AccSetup2(),
    '/signup3': (context) => AccSetup3(),
  },
));


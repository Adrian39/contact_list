import 'package:contact_list/screens/details.dart';
import 'package:contact_list/screens/loading.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/details': (context) => Details(),
  },
));
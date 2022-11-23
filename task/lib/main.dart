

import 'package:flutter/material.dart';
import 'pages/Homepage.dart';
import 'pages/2nd page.dart';




void main()=> runApp(MaterialApp(
    home : HOME(),
  routes: {
    '/home': (context) => HOME(),
    '/edit': (context) => edit(),
  },
));



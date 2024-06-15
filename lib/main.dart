import 'package:flutter/material.dart';
import 'package:space_app/Screens/home.dart';
import 'package:space_app/Screens/loading.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/' : (context) => const Loading(),
      '/home' : (context) => const Home(),
    }
  ));
}

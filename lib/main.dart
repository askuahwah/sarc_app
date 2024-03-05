import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'home.dart';
import 'about_screen.dart';
import 'event_creation.dart';
import 'profile_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login', // Set the initial route
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'home':(context) => MyHome(),
      'about_screen': (context)=>  AboutUsScreen(),
      'event_creation': (context)=>  EventCreationScreen(),
      'profile_screen': (context)=>  ProfileScreen(),

    },
  ));
}
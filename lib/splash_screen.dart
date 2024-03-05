import 'dart:js';

import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use the Scaffold for the splash screen
    return Scaffold(
      backgroundColor: Colors.blue, // Set the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your App Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Image.asset(
              'assets/logo.png',
              height: 100.0,
              width: 100.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {

    
    // Add a delay before navigating to the login screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context as BuildContext,
        MaterialPageRoute(builder: (context) => MyLogin()),
      );
    });
  }
}

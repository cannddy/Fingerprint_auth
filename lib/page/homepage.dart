// ignore_for_file: prefer_const_constructors

import 'package:auth_fp/page/fingerprint_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
       
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.purple,
                size: 80,
              ),
              SizedBox(height: 20),
              Text(
                'Authentication Successful!',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'You have been successfully authenticated.',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate back to the previous screen
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>FingerprintPage()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Button border radius
                  ),
                  elevation: 4, // Button shadow
                ),
                child: Text(
                  'LOGOUT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                  // Navigate back to the previous screen
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Button border radius
                  ),
                  elevation: 4, // Button shadow
                ),
                child: Text(
                  'QUIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

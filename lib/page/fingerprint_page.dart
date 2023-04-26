// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auth_fp/auth/local_auth.dart';
import 'package:auth_fp/page/homepage.dart';
import 'package:flutter/material.dart';

class FingerprintPage extends StatelessWidget {
  const FingerprintPage({super.key});
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Fingerprint Auth"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: ElevatedButton(
            onPressed: ()async {
              final isAuthenticated=await LocalAuth.authenticate();
              if (isAuthenticated) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage())
                  
                );
                
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, // Button background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Button border radius
              ),
              elevation: 4, // Button shadow
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.fingerprint,
                      color: Colors.white), // Biometric icon
                  SizedBox(width: 10), // Spacing between icon and text
                  Text(
                    'Authenticate with biometrics', // Button text
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

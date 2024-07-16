import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Make a Phone Call'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              makePhoneCall('1234567890'); // Replace with the phone number you want to call
            },
            child: Text('Call Now'),
          ),
        ),
      ),
    );
  }
}

Future<void> makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  if (await canLaunch(launchUri.toString())) {
    await launch(launchUri.toString());
  } else {
    throw 'Could not launch $launchUri';
  }
}
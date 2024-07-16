import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter URL Launcher Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String _url = 'https://github.com/fathimadiyam/flutter/tree/master';

  Future<void> _launchURL() async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visit Website Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: Text('Visit Website'),
        ),
      ),
    );
  }
}
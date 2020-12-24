import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'dart:core';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          toolbarHeight: 55.0,
          title: Center(
            child: Text(
              'Business Card',
              style: TextStyle(
                fontFamily: 'Rajdhani',
                fontSize: 34.0,
              ),
            ),
          ),
          backgroundColor: Colors.indigo[400],
        ),
        body: SafeArea(
          child: ScottsCard(),
        ),
      ),
    );
  }
}

class ScottsCard extends StatelessWidget {
  final uri = Uri.encodeFull(
      'mailto:hello@domain.com?subject=Looking to hire a Front-End/API/Mobile Developer?&body=Send me the details and I will get back to you as soon as possible. Thank you.');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/meSquare.jpg'),
            radius: 89.0,
          ),
          Text(
            'Scott Alan Williams',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34.0,
              fontFamily: 'Merienda',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Front-End / Flutter Developer',
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 21.0,
              fontFamily: 'Rajdhani',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
              width: 155.0,
              height: 55.0,
              child: Divider(
                color: Colors.indigo[200],
              )),
          FlatButton(
            onPressed: () => launch('tel:+13212109243'),
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 21.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 34.0,
                  color: Colors.indigo[300],
                ),
                title: Text(
                  '321-210-9243',
                  style: TextStyle(
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold,
                    fontSize: 21.0,
                    fontFamily: 'Rajdhani',
                  ),
                ),
              ),
            ),
          ),
          FlatButton(
            onPressed: () => launch(uri.toString()),
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 21.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  size: 34.0,
                  color: Colors.indigo[300],
                ),
                title: Text(
                  'scottalanw@gmail.com',
                  style: TextStyle(
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold,
                    fontSize: 21.0,
                    fontFamily: 'Rajdhani',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

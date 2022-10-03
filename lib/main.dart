import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Material(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                      child: Image.asset('my_images/splash_logo@1x.png')),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "www.togoparts.com",
                  style: TextStyle(color: Colors.orange,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 60),
                child: Text(
                  "Singapor's Most Addictive Bicycle Marketplace",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
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

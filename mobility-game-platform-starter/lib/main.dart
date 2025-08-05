
import 'package:flutter/material.dart';

void main() {
  runApp(MobilityApp());
}

class MobilityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobility Game Platform',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobility Game Platform")),
      body: Center(child: Text("QR Scan + GPS Logic Goes Here")),
    );
  }
}

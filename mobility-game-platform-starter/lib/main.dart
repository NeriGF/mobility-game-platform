import 'package:flutter/material.dart';
import 'qr_scan_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobility Game Platform',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobility Game")),
      body: Center(
  child: ElevatedButton(
    child: const Text("Scan QR Tag"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const QRScanScreen()),
      );
    },
  ),
),

  }
}

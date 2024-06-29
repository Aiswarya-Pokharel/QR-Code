import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:qrcode/generateqr.dart';
import 'package:qrcode/scanqr.dart';

class QrHome extends StatefulWidget {
  const QrHome({super.key});

  @override
  State<QrHome> createState() => _QrHomeState();
}

class _QrHomeState extends State<QrHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Code Scanner and Generator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScanQr()));
                },
                child: const Text("Scan QR Code")),
            const SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GenerateQr()));
                },
                child: const Text("Generate QR Code")),
          ],
        ),
      ),
    );
  }
}

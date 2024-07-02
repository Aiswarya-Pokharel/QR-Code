import 'package:flutter/material.dart';
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
        centerTitle: true,
        title: const Text(
          "QR Code Scanner and Generator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightGreen.shade200,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 227, 233, 237),
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: const [
              BoxShadow(
                offset: Offset(
                  1.0,
                  1.0,
                ),
                blurRadius: 7.0,
                spreadRadius: 2.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(0, 0),
                blurRadius: 0,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 38,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ScanQr()));
                    },
                    child: const Text(
                      "Scan QR Code",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
              const SizedBox(height: 35),
              SizedBox(
                height: 38,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GenerateQr()));
                    },
                    child: const Text(
                      "Generate QR Code",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

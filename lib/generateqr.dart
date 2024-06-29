import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQr extends StatefulWidget {
  GenerateQr({super.key});

  @override
  State<GenerateQr> createState() => _GenerateQrState();
}

class _GenerateQrState extends State<GenerateQr> {
  TextEditingController value = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Generator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          value.text.isEmpty
              ? Container()
              : QrImageView(
                  data: value.text,
                  version: QrVersions.auto,
                  size: 200.0,
                ),
          const SizedBox(height: 15),
          SizedBox(
            width: 300,
            child: TextField(
              controller: value,
              decoration: InputDecoration(
                  hintText: "Enter value to generate QR",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "Enter value to generate QR"),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text("Generate QR")),
            ),
          )
        ],
      ),
    );
  }
}

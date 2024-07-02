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
        centerTitle: true,
        title: const Text(
          "QR Code Generator",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightGreen.shade200,
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
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19.5),
                      topRight: Radius.circular(19.5),
                      bottomLeft: Radius.circular(19.5),
                      bottomRight: Radius.circular(19.5)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Color.fromARGB(255, 131, 141, 161)),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(0, 0),
                        blurRadius: 0,
                        spreadRadius: 0),
                  ]),
              child: TextField(
                controller: value,
                decoration: InputDecoration(
                    hintText: "Enter value to generate QR",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: "Enter value to generate QR",
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.w100,
                    )),
              ),
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

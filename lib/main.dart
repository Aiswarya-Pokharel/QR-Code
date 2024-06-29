import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcode/qrhome.dart';

void main() {
  runApp(QRCODE());
}

class QRCODE extends StatelessWidget {
  const QRCODE({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "QR CODE Scanner and Generator",
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'cv'),
      home: QrHome(),
    );
  }
}

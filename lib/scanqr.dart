import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class ScanQr extends StatefulWidget {
  ScanQr({super.key});

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  String scannedResult = "";
  startscan() async {
    var result;
    try {
      result = await FlutterBarcodeScanner.scanBarcode(
          "#FFFFFF", "Cancel", true, ScanMode.QR);
    } on PlatformException catch (e) {
      result = "Failed to get platform version.";
      Get.snackbar("Error occured", e.code);
    } catch (e) {
      // result = 'Failed to get platform version.';
      Get.snackbar("Error occured", e.toString());
    }
    if (!mounted) return;
    setState(() {
      scannedResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Scanner"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Scanned Code will appear here: $scannedResult")),
          const SizedBox(height: 10),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    startscan();
                  },
                  child: Text("Start Scan"))),
        ],
      ),
    );
  }
}

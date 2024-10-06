import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../service/scan_service.dart';

class ScanPage extends StatefulWidget {
  static const String id="scan_page";
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  bool isLoading = false;
  String? code;
  String? description;
  String? errorMessage;
  String? token;
  @override
  void reassemble() {
    super.reassemble();
    if (controller != null) {
      controller!.pauseCamera();
      controller!.resumeCamera();
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      _postScannedData(scanData.code);
    });
  }

  Future<void> _postScannedData(String? scannedData) async {
    if (scannedData == null) return;

    setState(() {
      isLoading = true;
    });

    String token = 'your-token';
    String uuid = 'your-uuid';
    final response = await QRPostService.postQRData(token, scannedData, uuid);

    if (response != null) {
      setState(() {
        code = response['code'];
        description = response['description'];
        errorMessage = response['error_message'];
        token = response['token'];
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      throw Exception('POST so\'rovida xatolik yuz berdi');
    }
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR kodni skan qilish va POST so\'rovi'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.green,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: 300,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: isLoading
                ? const CircularProgressIndicator()
                : code != null
                ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kod: $code', style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 8),
                    Text('Izoh: $description', style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 8),
                    Text('Xato xabari: $errorMessage', style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 8),
                    Text('Token: $token', style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            )
                : const Text('QR kod skan qilinmagan'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:untitled5/pages/scan_page.dart';
import '../class/app_bar_class.dart';
import '../class/drover_class.dart';
import '../class/floating_actian_class.dart';
import '../service/qr_service.dart';
class OtgruzkaPage extends StatefulWidget {
  static const String id = "otc_page";

  const OtgruzkaPage({super.key});

  @override
  State<OtgruzkaPage> createState() => _OtgruzkaPageState();
}

class _OtgruzkaPageState extends State<OtgruzkaPage> {
  bool isLoading = false;
  String? qrData;
  String token = "your-token";
  Future<void> _loadQRData() async {
    setState(() {
      isLoading = true;
    });

    final data = await QRDataService.fetchQRData(token);

    if (data != null) {
      setState(() {
        qrData = data['data'];
      });
    }

    setState(() {
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    AppBarClass appBarClass=AppBarClass();
    DrawerClass drawerClass=const DrawerClass();
    FloatingActianClass floatingActianClass=FloatingActianClass();
    return Scaffold(
      appBar: AppBar(
        title: appBarClass
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            qrData != null
                ? QrImageView(
              data: qrData!,
              version: QrVersions.auto,
              size: 200.0,
            )
                : Text('Ma\'lumot yuklanmadi'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _loadQRData();
              },
              child: const Text('QR Ma\'lumotlarini Yuklash'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: drawerClass,
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, ScanPage.id);
          },
          focusElevation: 50,
          elevation: 20,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const Icon(
            Icons.camera,
            size: 25,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}

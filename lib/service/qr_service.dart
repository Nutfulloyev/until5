import 'dart:convert';
import 'package:http/http.dart' as http;

class QRDataService {
  static const String BASE = "nz-dashboard.onrender.com";
  static const String API_GET_QR = "/v1/nis/api";

  static Future<Map<String, dynamic>?> fetchQRData(String token) async {
    var uri = Uri.https(BASE, API_GET_QR);

    final headers = {
      'Authorization':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3Mjg0MTM2NDUsImlhdCI6MTcyNzUzNTI0NSwiaWQiOiJhOTY2MDdiYy03YTRlLTQ2ZjgtOTkyOC02NjFhM2UzNDM3MzgiLCJyb2xlIjoic3VwZXIifQ.x7xZKHVaCprsP1Ku8BLRXiD1o7h8m97hXHi84AvbuWo',
      'Content-Type': 'application/json',
    };

    try {
      final response = await http.get(uri, headers: headers);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print("Xato: ${response.statusCode} - ${response.body}");
      }
    } catch (e) {
      print("Xatolik yuz berdi: $e");
    }
    return null;
  }
}

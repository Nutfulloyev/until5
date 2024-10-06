import 'dart:convert';
import 'package:http/http.dart' as http;

class QRPostService {
  static const String BASE_URL =
      "https://nz-dashboard.onrender.com/v1/nis/sign-in";

  static Future<Map<String, dynamic>?> postQRData(
      String token, String data, String uuid) async {
    final uri = Uri.parse(BASE_URL);

    final headers = {
      'Authorization':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3Mjg0MTM2NDUsImlhdCI6MTcyNzUzNTI0NSwiaWQiOiJhOTY2MDdiYy03YTRlLTQ2ZjgtOTkyOC02NjFhM2UzNDM3MzgiLCJyb2xlIjoic3VwZXIifQ.x7xZKHVaCprsP1Ku8BLRXiD1o7h8m97hXHi84AvbuWo',
      'Content-Type': 'application/json',
    };

    final body = jsonEncode({
      'data': data,
      'uuid': uuid,
    });

    try {
      final response = await http.post(uri, headers: headers, body: body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        print("Xato: ${response.statusCode} - ${response.body}");
        return null;
      }
    } catch (e) {
      print("Xatolik: $e");
      return null;
    }
  }
}

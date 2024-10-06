import 'dart:convert';

import 'package:http/http.dart';

import '../model/login.dart';

class RegisterService {
  static String BASE = "nz-dashboard.onrender.com";
  static Map<String, String> header = { 'Content-Type': 'application/json'};
  static String API_POST_LOGIN = "/v1/user/login";

  static Future<String?> POST(String api, Map<String, dynamic> params) async {
    var uri = Uri.https(BASE, api);
    Response response = await post(uri, headers: header, body: jsonEncode(params));

    if (response.statusCode == 201 || response.statusCode == 200) {
      return response.body;
    } else {
      print("Error: ${response.statusCode} - ${response.body}");
    }
    return null;
  }

  static Future<String?> loginUser(Login login) async {
    return await POST(API_POST_LOGIN, login.toJson());
  }
}

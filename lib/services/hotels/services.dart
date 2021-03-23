import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sha_prime_flutter/models/hotels/Hotels.dart';

class Services {
  static const String url = "https://jsonplaceholder.typicode.com/photos";

  static Future<List<Hotels>> getPhotos() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<Hotels> list = parsePhotos(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Hotels> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Hotels>((json) => Hotels.fromJson(json)).toList();
  }
}

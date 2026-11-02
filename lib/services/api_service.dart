import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl = 'https://picsum.photos/v2/list';

  Future<List<dynamic>> fetchImages() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load images');
    }
  }
}

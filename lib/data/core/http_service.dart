import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpService {
  Future<dynamic> get(String url) async {
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      return jsonResponse;
    } else {
      throw Exception('Failed to load data');
    }
  }
}

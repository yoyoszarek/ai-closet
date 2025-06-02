import 'package:http/http.dart' as http;
import 'dart:convert';

class PinterestService {
  final String accessToken;

  PinterestService(this.accessToken);

  Future<List<String>> fetchBoards() async {
    final url = Uri.parse("https://api.pinterest.com/v5/boards");
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $accessToken',
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return List<String>.from(data['items'].map((board) => board['name']));
    } else {
      throw Exception("Failed to fetch Pinterest boards");
    }
  }

  Future<List<String>> fetchPins(String boardId) async {
    final url = Uri.parse("https://api.pinterest.com/v5/boards/$boardId/pins");
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $accessToken',
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return List<String>.from(data['items'].map((pin) => pin['media']['images']['original']['url']));
    } else {
      throw Exception("Failed to fetch pins");
    }
  }
}

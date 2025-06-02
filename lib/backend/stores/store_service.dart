import 'package:http/http.dart' as http;

class StoreService {
  final Map<String, String> storeRSSFeeds = {
    'Zara': 'https://www.zara.com/us/en/rss',
    'H&M': 'https://www.hm.com/rss',
  };

  Future<List<String>> fetchDeals(String storeName) async {
    final feedUrl = storeRSSFeeds[storeName];
    if (feedUrl == null) return [];

    final response = await http.get(Uri.parse(feedUrl));
    if (response.statusCode == 200) {
      // For real use, parse the XML or JSON feed here
      return ["Deal 1", "Deal 2"];
    } else {
      return [];
    }
  }
}

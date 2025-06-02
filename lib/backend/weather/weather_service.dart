import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherService {
  final String apiKey = "YOUR_OPENWEATHERMAP_KEY";

  Future<String> getWeatherCondition(double lat, double lon) async {
    final url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric"
    );
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    return data['weather'][0]['main'];
  }
}

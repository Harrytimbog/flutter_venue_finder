import 'package:http/http.dart' as http;
import 'dart:convert';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/$longitude,$latitude,8.29,0/300x200?access_token=pk.eyJ1IjoiaGFycnl0aW1ib2ciLCJhIjoiY2tmbWl1bHhtMDFzcTJzbXBxNHFmaDNmZCJ9.aHKzB2URidomsKAIN97dag';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final url = Uri.parse(
        'https://api.mapbox.com/geocoding/v5/mapbox.places/$lng,$lat.json?types=place%2Cpostcode%2Caddress&limit=1&access_token=pk.eyJ1IjoiaGFycnl0aW1ib2ciLCJhIjoiY2tmbWl1bHhtMDFzcTJzbXBxNHFmaDNmZCJ9.aHKzB2URidomsKAIN97dag');
    final response = await http.get(url);
    // print(json.decode(response.body)['features']);
    return json.decode(response.body)['features'][0]['place_name'];
  }
}

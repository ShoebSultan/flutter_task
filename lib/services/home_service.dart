import 'package:flutter_task/models/home_screen_model.dart';
import 'package:http/http.dart' as http;

class HomeServices {
  static var client = http.Client();
  static Future<List<HomeScreenModel>> fetch() async {
    var response = await client.get(
        Uri.parse("https://5d55541936ad770014ccdf2d.mockapi.io/api/v1/paths"));

    if (response.statusCode == 200) {
      return homeScreenModelFromJson(response.body);
    } else {
      throw Exception("Error");
    }
  }
}

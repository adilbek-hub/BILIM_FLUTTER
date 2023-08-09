import 'package:http/http.dart' as http;
import 'package:weather_app_bloc/constants/api_const.dart';

import '../models/weather_response.dart';

class WeatherService {
  final client = http.Client();
  Future<WeatherResponse?> getWeatherByCityName(String cityName) async {
    final uri = Uri.parse(ApiConst.weatherByCityName(cityName));
    try {
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final weather = WeatherResponse.fromJson(response.body.toString());
        return weather;
      } else {
        print('Responstun status kod methodunda ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Кандайдыр бир ката жаралды ${e.toString()}');
    }
    return null;
  }
  //koldonuuchudan shaardyn aty aluu
  //uri tuzuu
  //
  //uri request jiberet
  //responstun status kodun teksheret
  //status kod 200 je 201 bolco model raytarat
  //eger kata bar bolso null kaytarat
}

final weatherService = WeatherService();

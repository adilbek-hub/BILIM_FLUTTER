import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_with_bloc/models/news_model.dart';

import '../constants/api_const.dart';

class NewsService {
  NewsService({required this.client});
  final http.Client client;

  Future<List<News>?> getNewsByCountry(String countryCode) async {
    try {
      final uri = Uri.parse(ApiConst.countryNews(countryCode));
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = jsonDecode(response.body) as Map<String, dynamic>;

        final news =
            (body['articles'] as List).map((e) => News.fromJson(e)).toList();
        return news;
      } else {
        print('response.statusCode: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Catch: ${e.toString()}');
      return null;
    }
  }
}

final serviceRepo = NewsService(client: http.Client());

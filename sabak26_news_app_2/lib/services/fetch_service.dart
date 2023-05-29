import 'package:http/http.dart' as http;
import 'package:sabak26_news_app_2/constants/api_const.dart';

class TopNewsRepo {
  final http.Client client = http.Client();
  Future<void> fetchTopNews() async {
    final Uri uri = Uri.parse(ApiConst.topNews);
    final http.Response response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
    }
  }
}

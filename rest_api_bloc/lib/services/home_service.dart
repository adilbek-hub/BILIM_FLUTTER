import 'package:http/http.dart' as http;
import 'package:rest_api_bloc/model.dart';

import '../components/api_const.dart';

class HomeService {
  const HomeService(this.client);
  final http.Client client;
  Future<List<UserModel>?> getUser() async {
    try {
      final uri = Uri.parse(ApiConst.users);
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return fromStringList(response.body);
      } else {
        print('response.statusCode: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Catch: $e');
      return null;
    }
  }
}

final homeService = HomeService(
  http.Client(),
);

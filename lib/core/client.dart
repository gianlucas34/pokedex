import 'package:dio/dio.dart';
import 'package:pokedex/core/http_client_interface.dart';

class Client implements IHttpClient {
  final Dio client =
      Dio(BaseOptions(baseUrl: 'https://gist.githubusercontent.com'));

  @override
  Future get(String url) async {
    final response = await client.get(url);

    return response.data;
  }
}

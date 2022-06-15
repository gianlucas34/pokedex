import 'package:dio/dio.dart';
import 'package:pokedex/core/http_client_interface.dart';

class Client implements IHttpClient {
  final Dio dio;

  Client._(this.dio);

  factory Client() {
    final dio = Dio();

    dio.options.baseUrl = 'https://gist.githubusercontent.com';

    return Client._(dio);
  }

  @override
  Future get(String url) async {
    final response = await dio.get(url);

    return response.data;
  }
}

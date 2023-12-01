import 'dart:developer';
import 'dart:html';
import 'package:http/http.dart' as http;

class ApiClient {
  ApiClient(String apiKey) {
    if (apiKey.isNotEmpty) {
      ApiClient.apiKey = apiKey;
    }

    if (instance != null) {
      throw Exception(
          "Cannot create new instance of ApiClient, please use getInstance");
    }
  }

  static String apiKey = '';
  static ApiClient? instance = null;

  final String BASE_URL = "http://localhost:8000/api/v1";

  http.Client client = http.Client();

  static ApiClient? getInstance() {
    if (instance == null) {
      instance = ApiClient();
    }
    return instance;
  }

  static bool _validate() {
    if (apiKey.isEmpty) {
      throw Exception("Please login first or Pass in An API key");
    }
    return false;
  }

  Future<Object?> login(String username, String password) async {
    return _login(username, password);
  }

  Future<Object?> isLoggedIn() async {
    return false;
  }

  Object? _login(String username, String password) async {
    try {
      final Uri url = Uri.parse(BASE_URL + '/login');
      final response = await client.post(
        url,
        headers: {
          'accept': 'application/json',
          'content-type': 'application/json'
        },
        body: {"username": username, "password": password},
      );
      return response;
    } catch (error) {
      log(error.toString());
    }

    return null;
  }

  Future<Object?> register(Object data) async {
    try {
      final Uri url = Uri.parse(BASE_URL + '/register');
      final response = await client.post(
        url,
        headers: {
          'accept': 'application/json',
          'content-type': 'application/json'
        },
        body: data,
      );
      return response;
    } catch (error) {
      log(error.toString());
    }

    return null;
  }

  Future<bool> logout() async {
    try {
      final Uri url = Uri.parse(BASE_URL + '/logout');
      final _ = await client.get(url);
      return true;
    } catch (error) {
      log(error.toString());
    }
    return false;
  }

  Future<bool> sendEmail(String subject, String content, String to, String from,
      List<File>? attachments) async {
    try {
      final Uri url = Uri.parse(BASE_URL + '/send-email');
      final _ = await client.post(
        url,
        headers: {
          'accept': 'application/json',
          'api-key': apiKey,
          'content-type': 'application/json'
        },
        body: {
          "to": to,
          "from": from,
          "subject": subject,
          "content": content,
        },
      );
      return true;
    } catch (error) {
      log(error.toString());
    }

    return null;
  }
}

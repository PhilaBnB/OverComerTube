import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
class DataRepository {
  Future<Response> fetchGitAPI(String apiName) async {
    //gitUsersApi
    var response = await http.get(
        Uri.parse('https://api.github.com/users/PhilaBnB'),
        headers: { HttpHeaders.authorizationHeader: 'application/vnd.github.v3+json'});
    if (response.statusCode == 200) {
      return response;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw DataNotFoundException();
    }
  }
}

class DataNotFoundException implements Exception {}
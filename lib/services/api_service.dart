import 'package:flutter_restapi/models/post.dart';

import 'package:http/http.dart' as http;
class ApiService {
  Future<List<Post>> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      return postFromJson(response.body);
    } else {
      throw Exception('Failed to load post');
    }
  }
}
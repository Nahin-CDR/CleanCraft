import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/post_model.dart';


abstract class PostRemoteDataSource {
  Future<List<PostModel>> getPosts();
}

class PostRemoteDataSourceImplementation implements PostRemoteDataSource {
  final http.Client client;

  PostRemoteDataSourceImplementation({required this.client});

  @override
  Future<List<PostModel>> getPosts() async {
    final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => PostModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

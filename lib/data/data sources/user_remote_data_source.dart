import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';

class UserRemoteDataSource {
  Future<List<UserModel>> fetchUsers() async {
    // Simulated API call
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => UserModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}

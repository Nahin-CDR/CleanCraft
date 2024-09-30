import 'package:flutter/material.dart';
import '../../domain/entities/post.dart';
import '../../domain/use cases/get_posts.dart';


class PostProvider with ChangeNotifier {
  final GetPosts getPosts;
  List<Post> _posts = [];
  bool _isLoading = false;
  String? _errorMessage;

  PostProvider(this.getPosts);

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchPosts() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _posts = await getPosts.call();
    } catch (error) {
      _errorMessage = error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import '../../domain/entities/user.dart';
import '../../domain/use cases/get_users.dart';

class UserProvider extends ChangeNotifier {
  final GetUsers getUsersUseCase;

  UserProvider(this.getUsersUseCase);

  List<User> _users = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<User> get users => _users;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchUsers() async {
    _isLoading = true;
    notifyListeners();

    try {
      _users = await getUsersUseCase();
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to load users';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

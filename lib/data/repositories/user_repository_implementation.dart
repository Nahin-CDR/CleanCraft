import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../data sources/user_remote_data_source.dart';

class UserRepositoryImplementation implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImplementation(this.remoteDataSource);

  @override
  Future<List<User>> getUsers() async {
    final userModels = await remoteDataSource.fetchUsers();
    return userModels.map((model) => User(name: model.name, email: model.email)).toList();
  }
}

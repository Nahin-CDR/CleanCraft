import '../../data/dataSources/post_remote_data_source.dart';
import '../../data/model/post_model.dart';

abstract class PostRepository {
  Future<List<PostModel>> fetchPosts();
}

class PostRepositoryImplementation implements PostRepository {
  final PostRemoteDataSource remoteDataSource;
  PostRepositoryImplementation({required this.remoteDataSource});
  @override
  Future<List<PostModel>> fetchPosts() async {
    return await remoteDataSource.getPosts();
  }
}

import '../../data/repositories/post_repository.dart';
import '../entities/post.dart';

class GetPosts {
  final PostRepository postRepository;

  GetPosts(this.postRepository);

  Future<List<Post>> call() async {
    final postModels = await postRepository.fetchPosts();
    return postModels.map((model) => Post(
      id: model.id,
      title: model.title,
      body: model.body,
    )).toList();
  }
}

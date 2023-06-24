import 'package:toktik/domain/datasources/video_post_data_source.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoPostDataSource;

  VideoPostRepositoryImpl({required this.videoPostDataSource});

  @override
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPostEntity>> getTrendingVideosByPage(int page) async {
    return videoPostDataSource.getTrendingVideosByPage(page);
  }
}

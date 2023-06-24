import 'package:toktik/domain/datasources/video_post_data_source.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';
import 'package:toktik/infrastructures/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class LocalVideoDataSourceImpl implements VideoPostDataSource {
  @override
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPostEntity>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    List<VideoPostEntity> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}

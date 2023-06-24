import 'package:toktik/domain/entities/video_post_entity.dart';

abstract class VideoPostDataSource {

  Future<List<VideoPostEntity>> getTrendingVideosByPage(int page);

  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId);

}

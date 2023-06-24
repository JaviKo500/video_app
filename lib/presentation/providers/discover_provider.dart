import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';
import 'package:toktik/infrastructures/repositories/video_post_repository_impl.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepositoryImpl videoPostRepository;

  DiscoverProvider({required this.videoPostRepository});

  bool initialLoading = true;
  List<VideoPostEntity> videos = [];

  Future<void> loadNextPage() async {
    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}

import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late CachedVideoPlayerController controller;
  @override
  void initState() {
    controller = CachedVideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    controller.initialize().then((value) {
      controller.play();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: CachedVideoPlayer(controller))
              : const CircularProgressIndicator()), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
git remote add origin https://github.com/soniyanw/caching_training.git
git branch -M main
git push -u origin main
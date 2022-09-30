import 'package:cache/views/videoplayer.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  List<String> videourls = [
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height,
                      child: Player(
                        url: videourls[index],
                      )));
            }));
  }
}

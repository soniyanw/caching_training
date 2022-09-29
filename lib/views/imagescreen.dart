import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Streaming"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.maxFinite,
                height: 400,
                child: CachedNetworkImage(
                    progressIndicatorBuilder: (context, url, progress) =>
                        Center(
                          child: CircularProgressIndicator(
                            value: progress.progress,
                          ),
                        ),
                    imageUrl: 'https://picsum.photos/250?image=9'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.maxFinite,
                height: 400,
                child: CachedNetworkImage(
                    progressIndicatorBuilder: (context, url, progress) =>
                        Center(
                          child: CircularProgressIndicator(
                            value: progress.progress,
                          ),
                        ),
                    imageUrl:
                        'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.maxFinite,
                height: 600,
                child: CachedNetworkImage(
                    progressIndicatorBuilder: (context, url, progress) =>
                        Center(
                          child: CircularProgressIndicator(
                            value: progress.progress,
                          ),
                        ),
                    imageUrl:
                        'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.maxFinite,
                height: 600,
                child: CachedNetworkImage(
                    progressIndicatorBuilder: (context, url, progress) =>
                        Center(
                          child: CircularProgressIndicator(
                            value: progress.progress,
                          ),
                        ),
                    imageUrl:
                        'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ),
            ),
          ],
        ));
  }
}

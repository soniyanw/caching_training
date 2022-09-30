import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageurls = [
      'https://picsum.photos/250?image=9',
      'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
      'https://googleflutter.com/sample_image.jpg',
      'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
    ];
    List<double> heights = [400, 500, 500, 700];
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Streaming"),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.maxFinite,
                height: heights[index],
                child: CachedNetworkImage(
                    progressIndicatorBuilder: (context, url, progress) =>
                        Center(
                          child: CircularProgressIndicator(
                            value: progress.progress,
                          ),
                        ),
                    imageUrl: imageurls[index]),
              ),
            );
          }),
    );
  }
}

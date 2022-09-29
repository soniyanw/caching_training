import 'package:cache/views/imagescreen.dart';
import 'package:cache/views/videoscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cache"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ImageScreen()));
                },
                child: Text("Image"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => VideoScreen()));
                },
                child: Text("Video"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

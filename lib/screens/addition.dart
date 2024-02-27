import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Addition extends StatefulWidget {
  const Addition({Key? key}) : super(key: key);

  @override
  State<Addition> createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/add.mp4');
    _initializeVideoPlayerFuture = _controller!.initialize();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: _controller!.value.aspectRatio,
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return VideoPlayer(_controller!);
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (_controller!.value.isPlaying) {
                _controller!.pause();
              } else {
                _controller!.play();
              }
            });
          },
          child: Icon(
            _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ],
    );
  }
}

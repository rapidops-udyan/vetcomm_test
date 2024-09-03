import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerFlutter extends StatefulWidget {
  const YoutubePlayerFlutter({
    super.key,
  });

  @override
  State createState() => _YoutubePlayerFlutterState();
}

class _YoutubePlayerFlutterState extends State<YoutubePlayerFlutter> {
  late YoutubePlayerController controller;
  late YoutubeMetaData videoMetaData;

  String title = '';
  String author = '';
  Duration duration = Duration.zero;
  bool isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=DAl3dbTnAgw';
    videoMetaData = const YoutubeMetaData();

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        captionLanguage: 'en',
        disableDragSeek: false,
        loop: false,
        forceHD: true,
        showLiveFullscreenButton: true,
        enableCaption: true,
      ),
    )..addListener(listener);
  }

  void listener() {
    if (isPlayerReady && mounted) {
      setState(() {
        videoMetaData = controller.metadata;
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          title: const Text('Youtube Player Flutter'),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: [
            player,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videoMetaData.title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Channel: ${videoMetaData.author}'),
                  const SizedBox(height: 4),
                  Text('Video ID: ${videoMetaData.videoId}'),
                  const SizedBox(height: 4),
                  Text(
                      'Current Quality: ${controller.value.playbackQuality ?? "Auto"}'),
                ],
              ),
            ),
          ],
        ),
      ),
      player: YoutubePlayer(
        controller: controller,
        onReady: () {
          setState(() {
            isPlayerReady = true;
          });
        },
      ),
    );
  }
}

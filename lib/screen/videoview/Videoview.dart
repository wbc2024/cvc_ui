// ignore_for_file: override_on_non_overriding_member, must_be_immutable, prefer_const_constructors, unused_local_variable, prefer_const_constructors_in_immutables, file_names

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  VideoPlay({Key? key}) : super(key: key);

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  // varibale
  VideoPlayerController? videoPlayerController;
  FlickManager? flickManager;

  @override
  void initState() {
    super.initState();

    videoPlayerController = VideoPlayerController.asset("assets/video.webm");

    videoPlayerController!.addListener(() {
      setState(() {});
    });

    videoPlayerController!.setVolume(1.0);
    videoPlayerController!.initialize();
    flickManager = FlickManager(
      videoPlayerController: videoPlayerController!,
    );
  }

  @override
  void dispose() {
    videoPlayerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final orientation =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlickVideoPlayer(flickManager: flickManager!),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'All Model\nQuestionn-Accounting-01',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Dr. Jhed Khan/Cty Commerce College'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('Leature video'),
                      ListTile(
                        leading: Text('1',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 22)),
                        title: Text('ACC-01,Model Q'),
                        trailing: Icon(
                          Icons.download_for_offline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

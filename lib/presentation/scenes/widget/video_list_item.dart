import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/scenes/scenes_bloc.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

class VideoListItemInherited extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;
  const VideoListItemInherited({
    super.key,
    required this.widget,
    required this.movieData,
  }) : super(child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInherited oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<VideoListItemInherited>();
  }
}

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final backDropPath =
        VideoListItemInherited.of(context)?.movieData.backDropPath;
    final videoUrl = dummyVideoUrls[index % dummyVideoUrls.length];
    return Stack(
      children: [
        ScenesVideos(
          videoUrl: videoUrl,
          onStateChanged: (bool) {},
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off_outlined,
                        size: 30,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                          radius: 27,
                          backgroundImage: backDropPath == null
                              ? null
                              : NetworkImage('$imageAppentUrl$backDropPath')),
                      ValueListenableBuilder(
                        valueListenable: likedVideosIdNotifier,
                        builder: (BuildContext ctx, Set<int> newLikedListIds,
                            Widget? _) {
                          final currentIndex = index;
                          if (newLikedListIds.contains(currentIndex)) {
                            return GestureDetector(
                              onTap: () {
                                likedVideosIdNotifier.value
                                    .remove(currentIndex);
                                likedVideosIdNotifier.notifyListeners();
                              },
                              child: const VideoActions(
                                icon: Icons.favorite_border_outlined,
                                iconText: "Liked",
                              ),
                            );
                          } else {
                            return GestureDetector(
                              onTap: () {
                                likedVideosIdNotifier.value.add(currentIndex);
                                likedVideosIdNotifier.notifyListeners();
                              },
                              child: const VideoActions(
                                icon: Icons.emoji_emotions,
                                iconText: "LOL",
                              ),
                            );
                          }
                        },
                      ),
                      const VideoActions(icon: Icons.add, iconText: "My List"),
                      GestureDetector(
                        onTap: () {
                          final movieName = VideoListItemInherited.of(context)
                              ?.movieData
                              .posterPath;
                          if (movieName != null) {
                            Share.share(movieName);
                          }
                        },
                        child: const VideoActions(
                          icon: Icons.near_me_outlined,
                          iconText: "Share",
                        ),
                      ),
                      const VideoActions(
                          icon: Icons.play_arrow_rounded, iconText: "Play"),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  const VideoActions({super.key, required this.icon, required this.iconText});
  final IconData icon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: 32,
          ),
          const SizedBox(height: 5),
          Text(
            iconText,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ScenesVideos extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const ScenesVideos(
      {super.key, required this.videoUrl, required this.onStateChanged});

  @override
  State<ScenesVideos> createState() => _ScenesVideosState();
}

class _ScenesVideosState extends State<ScenesVideos> {
  late VideoPlayerController videoPlayeController;

  @override
  void initState() {
    videoPlayeController = VideoPlayerController.network(widget.videoUrl);
    videoPlayeController.initialize().then((value) {
      setState(() {
        videoPlayeController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: videoPlayeController.value.isInitialized
          ? AspectRatio(
              aspectRatio: videoPlayeController.value.aspectRatio,
              child: VideoPlayer(videoPlayeController),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  @override
  void dispose() {
    videoPlayeController.dispose();
    super.dispose();
  }
}

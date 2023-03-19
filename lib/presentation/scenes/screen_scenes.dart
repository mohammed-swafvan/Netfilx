import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/scenes/scenes_bloc.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/presentation/scenes/widget/video_list_item.dart';

class ScreenScenes extends StatelessWidget {
  const ScreenScenes({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ScenesBloc>(context).add(const Initialized());
    });
    return Scaffold(
      body: BlocBuilder<ScenesBloc, ScenesState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return Center(
              child: Icon(
                Icons.wifi_off,
                color: kWhiteColor.withOpacity(0.5),
                size: 30,
              ),
            );
          } else if (state.videoList.isEmpty) {
            return const Center(
              child: Text(
                "Empty",
                style:
                    TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
              ),
            );
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                state.videoList.length,
                (index) => VideoListItemInherited(
                  widget: VideoListItem(
                    index: index,
                    key: Key(index.toString()),
                  ),
                  movieData: state.videoList[index],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/constance/constace.dart';

import '../../../core/strings.dart';
import 'download_image_widget.dart';

class BodySection extends StatelessWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for You",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "We'll download a personalized selection of\nmovies and shows for you, So there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              height: screenWidth,
              width: screenWidth,
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: screenWidth * 0.37,
                          backgroundColor: Colors.grey.withOpacity(0.4),
                        ),
                        DownloadImageWidget(
                          imageUrlList:
                              '$imageAppentUrl${state.downloads[2].posterPath}',
                          padding: const EdgeInsets.only(left: 180, top: 50),
                          angleRotation: 20,
                          size: Size(screenWidth * 0.32, screenWidth * 0.47),
                        ),
                        DownloadImageWidget(
                          imageUrlList:
                              '$imageAppentUrl${state.downloads[1].posterPath}',
                          padding: const EdgeInsets.only(right: 180, top: 50),
                          angleRotation: -20,
                          size: Size(screenWidth * 0.32, screenWidth * 0.47),
                        ),
                        DownloadImageWidget(
                          imageUrlList:
                              '$imageAppentUrl${state.downloads[0].posterPath}',
                          padding: const EdgeInsets.only(top: 20),
                          size: Size(screenWidth * 0.37, screenWidth * 0.57),
                        )
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

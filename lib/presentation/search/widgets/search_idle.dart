import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          searchTitle: "Top Searches",
        ),
        kHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text("Error while getting data"),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text("List empty"),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    final movie = state.idleList[index];
                    return TopSearchItemsTile(
                        title: movie.title ?? 'No Title Provided',
                        imageUrl: '$imageAppentUrl${movie.backDropPath}');
                  },
                  separatorBuilder: (ctx, index) => kHeightTwenty,
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemsTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemsTile({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.31,
          height: screenWidth * 0.18,
          decoration: BoxDecoration(
              borderRadius: kBorderRadius10,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              )),
        ),
        kWidth,
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: kWhiteColor.withOpacity(0.2),
          child: const CircleAvatar(
            radius: 18,
            backgroundColor: kBlackColor,
            child: Icon(
              Icons.play_arrow_rounded,
              size: 33,
              color: kWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}

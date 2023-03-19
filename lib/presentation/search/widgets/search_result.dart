import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(searchTitle: "Movies & Tv"),
        kHeight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(
                state.searchResultList.length,
                (index) {
                  final movie = state.searchResultList[index];
                  return SearchResultItems(
                    imageUrl: '$imageAppentUrl${movie.posterPath}',
                  );
                },
              ),
            );
          },
        ))
      ],
    );
  }
}

class SearchResultItems extends StatelessWidget {
  final String imageUrl;
  const SearchResultItems({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

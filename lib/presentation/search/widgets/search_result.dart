import 'package:flutter/material.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';

const searchResultItemsImageUrl = "https://www.themoviedb.org/t/p/w440_and_h660_face/aePBN8ffLCHoUXp8lkA5P29CXdx.jpg";

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(searchTitle: "Movies & Tv"),
        kHeight,
        Expanded(
            child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 1.4,
                children: List.generate(17, (index) {
                  return const SearchResultItems();
                })))
      ],
    );
  }
}

class SearchResultItems extends StatelessWidget {
  const SearchResultItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: const DecorationImage(
          image: NetworkImage(searchResultItemsImageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

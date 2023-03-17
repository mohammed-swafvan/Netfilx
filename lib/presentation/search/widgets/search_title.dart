import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  const SearchTitle({
    super.key,
    required this.searchTitle,
  });

  final String searchTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      searchTitle,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

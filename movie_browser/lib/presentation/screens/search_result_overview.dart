import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../misc/bg_gradient.dart';
import '../search_controller.dart';
import '../widgets/movie_summary_tile.dart';

class SearchResultOverView extends StatelessWidget {
  final SearchController _searchController = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: bgGradient,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Obx(
            () => ListView.builder(
              itemCount:
                  _searchController.searchResult.value.movieSummaries.length,
              itemBuilder: (_, ind) {
                return MovieSummaryTile(
                  movieSummary:
                      _searchController.searchResult.value.movieSummaries[ind],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

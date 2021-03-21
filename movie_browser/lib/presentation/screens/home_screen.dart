import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../misc/bg_gradient.dart';
import '../misc/my_colors.dart';
import '../search_controller.dart';
import 'search_result_overview.dart';

class HomeScreen extends StatelessWidget {
  final SearchController _searchController = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: bgGradient,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Ovid's Movie\nBrowser",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * .85,
              alignment: Alignment.center,
              child: TextField(
                controller: _searchController.titleTextController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 140,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    onPressed: () async {
                      await _searchController.searchMovie();
                      Get.to(SearchResultOverView());
                    },
                    color: myColors[PRIMARY],
                    child: Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

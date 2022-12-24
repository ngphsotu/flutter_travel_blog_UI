import 'package:flutter/material.dart';

import 'widgets/most_popular.dart';
import 'widgets/travel_blog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Travel Blog',
              style: TextStyle(fontSize: 36),
            ),
          ),

          Expanded(flex: 2, child: TravelBlog()),

          //
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                  child: const Text(
                    'View All',
                    style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
          ),

          Expanded(flex: 1, child: MostPopular()),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

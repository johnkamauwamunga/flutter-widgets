import 'package:flutter/material.dart';
import 'package:widgets/pages/utils/bubble_stories.dart';
import 'package:widgets/pages/utils/user_posts.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List people = ['John', 'Kelly', 'Jane', 'Ann', 'Lucy', 'Marion', 'Harry'];
  List poster = ['Jalpa', 'Ken', 'Brad', 'Jaymo', 'Mercy', 'Jedida'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ByJohn"),
            Row(
              children: [
                Icon(Icons.video_call_sharp),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.call_received_sharp),
                ),
                Icon(Icons.person_2_outlined),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Static Stories Section
          SizedBox(
            height: 120, // Fixed height for the stories section
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(
                  name: people[index],
                );
              },
            ),
          ),

          // Posts Section with Scrolling
          Expanded(
            child: ListView.builder(
              itemCount: poster.length,
              itemBuilder: (context, index) {
                return UserPosts(name: poster[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

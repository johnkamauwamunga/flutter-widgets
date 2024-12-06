import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  // Constructor requires 'name'
  const UserPosts({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 5),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[500], shape: BoxShape.circle),
                  ),
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )),
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey[500],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Icon(Icons.chat_bubble_outline),
                    ),
                    Icon(Icons.share),
                  ],
                ),
                Icon(Icons.bookmark),
              ],
            ),
          )
        ],
      ),
    );
  }
}

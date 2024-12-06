import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String name;

  // Constructor requires 'name'
  const BubbleStories({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 5),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.grey[500],
              shape: BoxShape.circle,
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}

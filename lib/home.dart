import 'package:flutter/material.dart';
import 'package:instagram/utils/bubble_stories.dart';
import 'package:instagram/utils/posts.dart';

class UserName extends StatelessWidget {
  List<String> people = [
    "danbilzerian",
    "fully_faltu",
    "carryminati",
    "round2hell",
    "urbantheory"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(children: [
              Icon(Icons.add),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.message_rounded),
            ])
          ],
        ),
      ),
      //Stories
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) =>
                  BubbleStories(text: people[index]),
              scrollDirection: Axis.horizontal,
            ),
          ),
          
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(name: people[index]);
                }),
          ),
        ],
      ),
    );
  }
}

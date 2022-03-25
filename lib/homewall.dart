import 'package:flutter/material.dart';
import 'package:instagram_ui/util/bubblestories.dart';
import 'package:instagram_ui/util/userpost.dart';

class HomePage extends StatelessWidget {
  final List people = [
    'prabin',
    'rajbhandari',
    'sushmita',
    'obama',
    'sgvhgdsvdghv'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble),
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (BuildContext context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          //posts
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPost(name: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

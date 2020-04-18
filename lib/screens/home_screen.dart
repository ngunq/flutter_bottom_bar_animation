import 'package:flutter/material.dart';
import 'package:flutter_bottom_bar_animation/models/bar_item_model.dart';
import 'package:flutter_bottom_bar_animation/widgets/animate_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BarItem> items = [
      BarItem(
        color: Colors.blueAccent,
        icon: Icons.home,
        text: 'Home',
      ),
      BarItem(
        color: Colors.redAccent,
        icon: Icons.search,
        text: 'Search',
      ),
      BarItem(
        color: Colors.purpleAccent,
        icon: Icons.favorite,
        text: 'Likes',
      ),
      BarItem(
        color: Colors.yellowAccent,
        icon: Icons.person,
        text: 'Profile',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      bottomNavigationBar: AnimatedBottomBar(
        items: items,
      ),
    );
  }
}

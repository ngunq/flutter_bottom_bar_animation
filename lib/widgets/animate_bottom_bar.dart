import 'package:flutter/material.dart';
import 'package:flutter_bottom_bar_animation/models/bar_item_model.dart';

class AnimatedBottomBar extends StatefulWidget {
  List<BarItem> items;

  AnimatedBottomBar({@required this.items});
  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar>
    with TickerProviderStateMixin {
  int itemSelected = 0;

  _buildBarItem(int index, BarItem item) {
    bool isSelected = itemSelected == index;

    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      onTap: () {
        setState(() {
          itemSelected = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 200,
        ),
        decoration: BoxDecoration(
          color: isSelected ? item.color.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          children: <Widget>[
            Icon(
              item.icon,
              color: isSelected ? item.color : Colors.grey,
            ),
            SizedBox(
              width: 15.0,
            ),
            AnimatedSize(
              vsync: this,
              duration: Duration(
                milliseconds: 200,
              ),
              curve: Curves.easeInOut,
              child: Text(
                isSelected ? item.text : "",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: item.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 22.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            widget.items.length,
            (index) => _buildBarItem(index, widget.items[index]),
          ),
        ),
      ),
    );
  }
}

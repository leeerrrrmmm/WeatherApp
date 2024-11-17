import 'package:flutter/material.dart';

import '../models/Weather.dart';

class ItemTile extends StatefulWidget {
  final Weather weather;
  ItemTile({
    super.key,
  required this.weather});

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        padding: const EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(10),
        ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.weather.imagePath,scale:4),
          Text(widget.weather.name)
        ],
      )
    );

  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/components/item_tile.dart';

import '../models/Weather.dart';
import '../models/item.dart';

class ListenScreen extends StatefulWidget {
  const ListenScreen({super.key});

  @override
  State<ListenScreen> createState() => _ListenScreenState();
}

class _ListenScreenState extends State<ListenScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Item>(
      builder: (BuildContext context, value,  child) => Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue
        ),
        child: ListView.builder(
          itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
            Weather _UserSelec = value.getUserCart()[index];
              return ItemTile(weather: _UserSelec,);
            })
      ),
    );
  }
}

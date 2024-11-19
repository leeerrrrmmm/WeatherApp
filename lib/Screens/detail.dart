import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/components/detail_tile.dart';
import '../models/Weather.dart';
import '../models/item.dart';

class Detail extends StatelessWidget {
  final Weather weather;

  const Detail({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.lightBlue,
      body: Consumer<Item>(
          builder: (context, value, child) => DetailTile(weather: weather))
    );
  }
}

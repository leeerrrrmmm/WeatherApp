import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/detail_tile.dart';
import '../models/Weather.dart';
import '../models/item.dart';

class Detail extends StatelessWidget {

  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<Item>(
      builder: (context, value, child) =>  Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue
        ),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              Weather weather = value.getWeatherStatusList()[index];
          return DetailTile(weather: weather);
        }),
      ),
    );
  }
}

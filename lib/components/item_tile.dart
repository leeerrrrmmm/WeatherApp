import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/Screens/detail.dart';

import '../models/Weather.dart';
import '../models/item.dart';

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
  void initState() {
    _currentTime = _getCurTime();
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  late String _currentTime;
  late Timer _timer;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = _getCurTime();
      });
    });
  }

  String _getCurTime(){
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
        // ':${now.second.toString().padLeft(2, '0')}';
  }

    void _addWeatheItem(Weather weather){
    Provider.of<Item>(context, listen: false).addItemToCart(weather);
    }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _addWeatheItem(widget.weather);
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context) => const Detail()), (route) => true);
      },
      child: Container(
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
            Column(
              children: [
                Image.asset(widget.weather.imagePath,scale:4),
                Text(_currentTime,
                style:TextStyle(
                  color:Colors.white,
                  fontSize:16
                )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text(widget.weather.name,
              style:TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold
              )),
            ),
            Text(widget.weather.degree + '°',
            style:TextStyle(
              color:Colors.white,
              fontSize:25,

            )),
          ],
        )
      ),
    );

  }
}

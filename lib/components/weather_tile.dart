import 'package:flutter/material.dart';
import '../models/Weather.dart';
import 'dart:async';

class WeatherTile extends StatefulWidget {
  final Weather weather;
  WeatherTile({
    super.key,
    required this.weather,
  });

  @override
  State<WeatherTile> createState() => _WeatherTileState();
}


class _WeatherTileState extends State<WeatherTile> {
  late String _currentTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _currentTime = _getCurrentTime(); // Инициализация текущего времени
    _startTimer(); // Запуск таймера
  }

  @override
  void dispose() {
    _timer.cancel(); // Остановите таймер при удалении виджета
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = _getCurrentTime();
      });
    });
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
        // ':${now.second.toString().padLeft(2, '0')}';
  }

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.weather.imagePath,
                scale: 3,
              ),
              Text(widget.weather.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              Text(widget.weather.degree + '°',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(_currentTime,
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('Макс.:' + widget.weather.maxDegree,
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                    Text(' Мин.:' + widget.weather.minDegree,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/Weather.dart';

class WeatherTile extends StatefulWidget {
  final Weather weather; // Сделано final для большей безопасности
  WeatherTile({
    super.key,
    required this.weather,
  });

  @override
  State<WeatherTile> createState() => _WeatherTileState();
}

class _WeatherTileState extends State<WeatherTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 5, right: 10),
      padding: const EdgeInsets.all( 10),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Изображение
              Image.asset(
                widget.weather.imagePath,
                scale: 4,
              ),
              // Имя и погодные условия
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.weather.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30), // Отступ между name и weatherConditions
                  Text(
                    widget.weather.weatherConditions,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // Градусы и мин/макс температура
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      widget.weather.degree + '°',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          'Макс.: ${widget.weather.maxDegree}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Мин.: ${widget.weather.minDegree}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

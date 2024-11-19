import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Weather.dart';

class DetailTile extends StatefulWidget {
  final Weather weather;
  DetailTile({
    super.key,
    required this.weather,
  });

  @override
  State<DetailTile> createState() => _DetailTileState();
}

class _DetailTileState extends State<DetailTile> {
  late String _currentData;

  @override
  void initState() {
    _currentData = _getCurDate();
    super.initState();
  }

  String _getCurDate() {
    final now = DateTime.now();
    return DateFormat('EEEE, d MMMM', 'en_US').format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Colors.white, size: 30),
                        Text(
                          widget.weather.name,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    Icon(Icons.notifications_rounded, color: Colors.white),
                  ],
                ),
                Image.asset(widget.weather.imagePath, scale: 1.3),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade300,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 0.75),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _currentData,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          widget.weather.degree + '°',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          widget.weather.weatherConditions,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('lib/images/wind.png'),
                              Text(
                                'Wind',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                '|',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                widget.weather.wind,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('lib/images/hum.png'),
                              Text(
                                'Hum',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                '|',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                widget.weather.hum,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          // Горизонтальная прокрутка
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 150, // Высота контейнера для горизонтальной прокрутки
                child: SingleChildScrollView(

                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: widget.weather.hourWeatherForecast.map((hourWeather) {
                      return Container(
                        width: 100, // Ширина каждого элемента
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: [
                          //   BoxShadow(color: Colors.black12, blurRadius: 4.0)
                          // ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(hourWeather.hoursImage, scale: 4),
                            Text('${hourWeather.hour}', style: TextStyle(fontSize: 14, color:Colors.white)),
                            Text('${hourWeather.temp} ' + '°', style: TextStyle(fontSize: 14, color:Colors.white)),
                            Text(hourWeather.condition, style: TextStyle(fontSize: 12,color:Colors.white)),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

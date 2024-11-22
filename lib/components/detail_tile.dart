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
  late List<String> _dateList ;
  late List<String> _hourList;

  @override
  void initState() {
    _geterateDateList();
    _generateTimeList();
    super.initState();
  }
  //Time
  void _generateTimeList() {
    final _nowTime = DateTime.now();
    _hourList = List.generate(20, (index) => _getCurTime(_nowTime.add(Duration(hours: index))));
  }


  String _getCurTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }



//Date
  void _geterateDateList() {
    final now = DateTime.now();
    _dateList = List.generate(
      7, // Количество элементов
          (index) => _getCurDate(now.add(Duration(days: index))),
    );
  }

  String _getCurDate(DateTime date) {
    return DateFormat('EEEE, d MMMM', 'en_US').format(date);
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
                Container(
                  height: 100,
                    width: 100,
                    child: Image.asset(widget.weather.imagePath, scale: 1.3)),
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
                          _dateList.first,
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
          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(vertical: 10.0),
          //   sliver: SliverToBoxAdapter(
          //     child: Container(
          //       height: 150, // Высота контейнера для горизонтальной прокрутки
          //       child: SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: Row(
          //           children: widget.weather.hourWeatherForecast.map((hourWeather) {
          //             return Container(
          //               width: 120, // Ширина каждого элемента
          //               margin: const EdgeInsets.symmetric(horizontal: 8.0),
          //               decoration: BoxDecoration(
          //                 color: Colors.lightBlue,
          //                 borderRadius: BorderRadius.circular(10),
          //                 // boxShadow: [
          //                 //   BoxShadow(color: Colors.black12, blurRadius: 4.0)
          //                 // ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Image.asset(hourWeather.hoursImage, scale: 4),
          //                   Text('${hourWeather.hour}', style: TextStyle(fontSize: 14, color:Colors.white)),
          //                   const SizedBox(height: 20),
          //                   Text('${hourWeather.temp} ' + '°', style: TextStyle(fontSize: 14, color:Colors.white)),
          //                 ],
          //               ),
          //             );
          //           }).toList(),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hourly Forecast',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 120, // Задаем высоту контейнера
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
                        child: Row(
                          children: List.generate(
                            _hourList.length,
                                (index) {
                              WeatherOnHour? forecastForHour = index < widget.weather.hourWeatherForecast.length
                                  ? widget.weather.hourWeatherForecast[index]
                                  : null;

                              return Container(
                                width: 100, // Ширина элемента
                                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue.shade300,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      _hourList[index],
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                    const SizedBox(height: 8),
                                    if (forecastForHour != null) ...[
                                      Text(
                                        '${forecastForHour.temp}°',
                                        style: TextStyle(color: Colors.white, fontSize: 17),
                                      ),
                                      const SizedBox(height: 4),
                                      Image.asset(
                                        forecastForHour.hoursImage,
                                        scale: 5.9,
                                      ),
                                    ],
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '7-Day Forecast',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue.shade300,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: _dateList.length,
                        itemBuilder: (context, index) {

                          WeatherOnDay? forecastForDay = index < widget.weather.dayForecast.length
                              ? widget.weather.dayForecast[index]
                              : null;

                          return Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _dateList[index],
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                                if (forecastForDay != null)
                                  Row(
                                    children: [
                                      Text(
                                        '${forecastForDay.minDegree}°',
                                        style: TextStyle(color: Colors.white, fontSize: 14),
                                      ),
                                      SizedBox(width: 20),

                                      Text(
                                        '${forecastForDay.maxDegree}°',
                                        style: TextStyle(color: Colors.white, fontSize: 14),
                                      ),
                                      SizedBox(width: 8),
                                      // Отображаем картинку дня
                                      Image.asset(
                                        forecastForDay.imageOfDay,
                                        width: 24,
                                        height: 24,
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}

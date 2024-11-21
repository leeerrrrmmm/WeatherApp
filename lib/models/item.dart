import 'package:flutter/material.dart';
import 'Weather.dart';

class Item extends ChangeNotifier {

  List<Weather> weatherStatus = [
    Weather(
        imagePath: 'lib/images/cloudy.png',
        name: 'Kharkiv',
        degree: '3',
        maxDegree: '5',
        minDegree: '-1',
        weatherConditions: 'Cloudy',
        wind: '9 m/s',
        hum: '90%',
        hourWeatherForecast: [
          WeatherOnHour(
            hour: '12:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '13:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '14:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '15:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '16:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '17:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/night.png',
          ),
          WeatherOnHour(
            hour: '18:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '19:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '20:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '21:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '22:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '23:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '00:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '01:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '02:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '03:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '04:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '05:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '06:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '07:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
        ],
        dayForecast: [
          WeatherOnDay(
              maxDegree: '4',
              minDegree: '-5',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '2',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '-2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '3',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '-1',
              minDegree: '-7',
              imageOfDay: 'lib/images/cloud.png'),

        ]

    ),

    Weather(
        imagePath: 'lib/images/sun.png',
        name: 'Lviv',
        degree: '5',
        maxDegree: '9',
        minDegree: '1',
        weatherConditions: 'Sunny',
        wind: '4 m/s',
        hum: '30%',
        hourWeatherForecast: [
          WeatherOnHour(
            hour: '12:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '13:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '14:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '15:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '16:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '17:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '18:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/night.png',
          ),
          WeatherOnHour(
            hour: '19:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '20:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '21:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '22:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '23:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '00:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '01:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '02:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '03:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '04:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '05:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '06:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '07:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
        ],
        dayForecast: [
          WeatherOnDay(
              maxDegree: '4',
              minDegree: '-5',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '2',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '-2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '3',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '-1',
              minDegree: '-7',
              imageOfDay: 'lib/images/cloud.png'),

        ]
    ),

    Weather(
        imagePath: 'lib/images/rain.png',
        name: 'Odessa',
        degree: '1',
        maxDegree: '2',
        minDegree: '-3',
        weatherConditions: 'Rain',
        wind: '9 m/s',
        hum: '90%',
        hourWeatherForecast: [
          WeatherOnHour(
            hour: '12:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '13:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '14:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '15:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '16:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '17:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '18:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/night.png',
          ),
          WeatherOnHour(
            hour: '19:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '20:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '21:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '22:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '23:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '00:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '01:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '02:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '03:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '04:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '05:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '06:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '07:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
        ],
        dayForecast: [
          WeatherOnDay(
              maxDegree: '4',
              minDegree: '-5',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '2',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '-2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '3',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '-1',
              minDegree: '-7',
              imageOfDay: 'lib/images/cloud.png'),

        ]
    ),

    Weather(
        imagePath: 'lib/images/rain.png',
        name: 'Poltava',
        degree: '0',
        maxDegree: '2',
        minDegree: '-1',
        weatherConditions: 'Rain',
        wind: '4 m/s',
        hum: '94%',
        hourWeatherForecast: [
          WeatherOnHour(
            hour: '12:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '13:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '14:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '15:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '16:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '17:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '18:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/night.png',
          ),
          WeatherOnHour(
            hour: '19:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '20:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '21:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '22:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '23:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '00:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '01:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '02:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '03:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '04:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '05:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '06:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '07:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
        ],
        dayForecast: [
          WeatherOnDay(
              maxDegree: '4',
              minDegree: '-5',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '2',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '-2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '3',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '-1',
              minDegree: '-7',
              imageOfDay: 'lib/images/cloud.png'),

        ]
    ),

    Weather(
        imagePath: 'lib/images/sun.png',
        name: 'Dnipro',
        degree: '3',
        maxDegree: '2',
        minDegree: '-1',
        weatherConditions: 'Cloudy',
        wind: '9 m/s',
        hum: '90%',
        hourWeatherForecast: [
          WeatherOnHour(
            hour: '12:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '13:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '14:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '15:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '16:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/rain.png',
          ),
          WeatherOnHour(
            hour: '17:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '18:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/night.png',
          ),
          WeatherOnHour(
            hour: '19:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '20:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '21:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloud.png',
          ),
          WeatherOnHour(
            hour: '22:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/lrain.png',
          ),
          WeatherOnHour(
            hour: '23:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/lrain.png',
          ),
          WeatherOnHour(
            hour: '00:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/lrain.png',
          ),
          WeatherOnHour(
            hour: '01:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '02:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '03:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '04:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '05:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '06:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '07:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
        ],
        dayForecast: [
          WeatherOnDay(
              maxDegree: '4',
              minDegree: '-5',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '2',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '-2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '3',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '-1',
              minDegree: '-7',
              imageOfDay: 'lib/images/cloud.png'),

        ]
    ),

    Weather(
        imagePath: 'lib/images/cloud.png',
        name: 'Kyiv',
        degree: '2',
        maxDegree: '4',
        minDegree: '0',
        weatherConditions: 'Sunny',
        wind: '4 m/s',
        hum: '30%',
        hourWeatherForecast: [
          WeatherOnHour(
            hour: '12:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '13:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '14:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '15:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '16:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '17:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/sun.png',
          ),
          WeatherOnHour(
            hour: '18:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/night.png',
          ),
          WeatherOnHour(
            hour: '19:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '20:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '21:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '22:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '23:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '00:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '01:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '02:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '03:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '04:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '05:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '06:00',
            temp: '3',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
          WeatherOnHour(
            hour: '07:00',
            temp: '4',
            condition: 'Cloudy',
            hoursImage: 'lib/images/cloudy.png',
          ),
        ],
        dayForecast: [
          WeatherOnDay(
              maxDegree: '4',
              minDegree: '-5',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '2',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '-2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '0',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '3',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '0',
              minDegree: '2',
              imageOfDay: 'lib/images/cloud.png'),
          WeatherOnDay(
              maxDegree: '-1',
              minDegree: '-7',
              imageOfDay: 'lib/images/cloud.png'),

        ]
    )

  ];

  //list of items in user cart
  List<Weather> userCart = [];


//get list of shoes for sale
  List<Weather> getWeatherStatusList() {
    return weatherStatus;
  }


//get cart
  List<Weather> getUserCart() {
    return userCart;
  }


// add items to cart
  void addItemToCart(Weather weather) {
    userCart.add(weather);
    notifyListeners();
  }


//remove items from cart
  void removeItemFromCart(Weather weather) {
    userCart.remove(weather);
    notifyListeners();
  }


}
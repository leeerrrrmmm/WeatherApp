import 'package:cloud_firestore/cloud_firestore.dart';

class Weather {
  final String imagePath;
  final String name;
  final String degree;
  final String maxDegree;
  final String minDegree;
  final String weatherConditions;
  final String wind;
  final String hum;
  final List<WeatherOnHour> hourWeatherForecast;

  Weather({
    required this.imagePath,
    required this.name,
    required this.degree,
    required this.maxDegree,
    required this.minDegree,
    required this.weatherConditions,
    required this.wind,
    required this.hum,
    required this.hourWeatherForecast,
  });

  // Метод для создания объекта Weather из документа Firestore
  factory Weather.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;

    // Проверка на null и корректная обработка поля hourlyForecast
    List<WeatherOnHour> forecastList = [];
    if (data['hourlyForecast'] != null) {
      forecastList = (data['hourlyForecast'] as List)
          .map((hourData) => WeatherOnHour.fromMap(hourData))
          .toList();
    }

    return Weather(
      imagePath: data['imagePath'] ?? '',
      name: data['name'] ?? '',
      degree: data['degree'] ?? '',
      maxDegree: data['maxDegree'] ?? '',
      minDegree: data['minDegree'] ?? '',
      weatherConditions: data['weatherConditions'] ?? '',
      wind: data['wind'] ?? '',
      hum: data['hum'] ?? '',
      hourWeatherForecast: forecastList,
    );
  }
}

class WeatherOnHour  {
  final String hour;
  final String hoursImage;
  final String temp;
  final String condition;

  WeatherOnHour({
    required this.hour,
    required this.hoursImage,
    required this.temp,
    required this.condition,
  });

  // Метод для преобразования объекта в Map для Firestore
  Map<String, dynamic> toMap() {
    return {
      'hour': hour,
      'hoursImage': hoursImage,
      'temp': temp,
      'condition': condition,
    };
  }

  factory WeatherOnHour.fromMap(Map<String, dynamic> data) {
    return WeatherOnHour(
      hour: data['hour'] ?? '',
      hoursImage: data['hoursImage'] ?? '',
      temp: data['temp'] ?? '',
      condition: data['condition'] ?? '',
    );
  }
}

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

  Weather({
    required this.imagePath,
    required this.name,
    required this.degree,
    required this.maxDegree,
    required this.minDegree,
    required this.weatherConditions,
    required this.wind,
    required this.hum,
  });

  // Метод для создания объекта Weather из документа Firestore
  factory Weather.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Weather(
      imagePath: data['imagePath'] ?? '',  // Используем значения из документа Firestore
      name: data['name'] ?? '',
      degree: data['degree'] ?? '',
      maxDegree: data['maxDegree'] ?? '',
      minDegree: data['minDegree'] ?? '',
      weatherConditions: data['weatherConditions'] ?? '',
      wind: data['wind'] ?? '',
      hum: data['hum'] ?? '',
    );
  }
}

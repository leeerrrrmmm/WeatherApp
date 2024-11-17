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
        hum: '90%'
    ),

    Weather(
        imagePath: 'lib/images/sun.png',
        name: 'Lviv',
        degree: '5',
        maxDegree: '9',
        minDegree: '1',
        weatherConditions: 'Sunny',
        wind: '4 m/s',
        hum: '30%'
    ),

    Weather(
        imagePath: 'lib/images/rain.png',
        name: 'Odessa',
        degree: '1',
        maxDegree: '2',
        minDegree: '-3',
        weatherConditions: 'Rain',
        wind: '9 m/s',
        hum: '90%'
    ),

    Weather(
        imagePath: 'lib/images/rain.png',
        name: 'Poltava',
        degree: '0',
        maxDegree: '2',
        minDegree: '-1',
        weatherConditions: 'Rain',
        wind: '4 m/s',
        hum: '94%'
    ),

    Weather(
        imagePath: 'lib/images/sun.png',
        name: 'Dnipro',
        degree: '3',
        maxDegree: '2',
        minDegree: '-1',
        weatherConditions: 'Cloudy',
        wind: '9 m/s',
        hum: '90%'
    ),

    Weather(
        imagePath: 'lib/images/sun.png',
        name: 'Kyiv',
        degree: '2',
        maxDegree: '4',
        minDegree: '0',
        weatherConditions: 'Sunny',
        wind: '4 m/s',
        hum: '30%'
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
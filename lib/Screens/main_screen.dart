import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/weather_tile.dart';
import '../models/Weather.dart';
import '../models/item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {




  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade500,
      child: Consumer<Item>(
          builder: (context, value, child) => Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius:BorderRadius.circular(10)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.search, color:Colors.white),
                          Text('Search',
                              style:TextStyle(
                                  color:Colors.white
                              ))
                        ]
                    ),
                  )
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount:value.weatherStatus.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    Weather weather = value.getWeatherStatusList()[index];
                    // get a Shoe from shop list
                    return WeatherTile(
                      weather: weather,

                      // onTap: () => addShoeToCart(shoe));
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}

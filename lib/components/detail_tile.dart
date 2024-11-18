import 'package:flutter/material.dart';

import '../models/Weather.dart';

class DetailTile extends StatefulWidget {
  final Weather weather;
  DetailTile({
    super.key,
    required this.weather});

  @override
  State<DetailTile> createState() => _DetailTileState();
}

class _DetailTileState extends State<DetailTile> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.lightBlue,
      child: SingleChildScrollView(
        child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children: [
                     Icon(Icons.location_on_outlined,color:Colors.white,size:30),
                     Text(widget.weather.name,
                         style:TextStyle(
                             color:Colors.white,
                             fontSize:20,
                             decoration: TextDecoration.none
                         ))],
                 ),
                  Icon(Icons.notifications_rounded, color:Colors.white)
                ],
              ),
            ),
              Image.asset(widget.weather.imagePath,scale: 1.3,),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color:Colors.lightBlue.shade300,
                  borderRadius:BorderRadius.circular(10),
                  border: Border.all(color:Colors.white,width: 0.75)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Today, 12 September',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20,
                        decoration: TextDecoration.none,
                      )),
                      Text(widget.weather.degree + '°',
                          style:TextStyle(
                              color:Colors.white,
                              fontSize:40,
                              decoration: TextDecoration.none)),
                      Text(widget.weather.weatherConditions,
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:25,
                        decoration:TextDecoration.none,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('lib/images/wind.png'),
                            Text('Wind',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize:20,
                              decoration:TextDecoration.none,
                            )),
                            Text('|',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:20,
                                  decoration:TextDecoration.none,
                                )),
                            Text(widget.weather.wind,
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:20,
                                  decoration:TextDecoration.none,
                                ))
                          ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0,right: 25.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('lib/images/hum.png'),
                            Text('Hum',
                                style:TextStyle(
                              color:Colors.white,
                              fontSize:20,
                              decoration:TextDecoration.none,
                            )),
                            Text('|',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:20,
                                  decoration:TextDecoration.none,
                                )),
                            Text(widget.weather.hum,
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:20,
                                  decoration:TextDecoration.none,
                                ))
                          ]
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

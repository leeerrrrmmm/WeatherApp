import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:weather/components/item_tile.dart';
import '../models/Weather.dart';

class ListenScreen extends StatefulWidget {
  const ListenScreen({super.key});

  @override
  State<ListenScreen> createState() => _ListenScreenState();
}

class _ListenScreenState extends State<ListenScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.lightBlue),
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('items').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snap) {
          // Проверка наличия данных
          if (!snap.hasData || snap.data!.docs.isEmpty) {
            return Center(child: CircularProgressIndicator(color:Colors.white));
          }

          // Преобразуем документы Firestore в объекты Weather
          List<Weather> weatherItems = snap.data!.docs.map((doc) {
            return Weather.fromFirestore(doc); // Преобразование в модель Weather
          }).toList();

          // Отображаем данные в ListView
          return ListView.builder(
            itemCount: weatherItems.length,
            itemBuilder: (context, index) {
              Weather _UserSelec = weatherItems[index];
              return ItemTile(weather: _UserSelec);
            },
          );
        },
      ),
    );
  }
}

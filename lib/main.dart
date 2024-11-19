import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/Screens/home_page.dart';

import 'models/item.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:FirebaseOptions(
          apiKey: 'AIzaSyB6iyTfwTLEA2F0CB1Mn3gTLxhCKTz544E',
          appId: '1:1021404294465:android:0e28faa9ccea3648e705c0',
          messagingSenderId: '1021404294465',
          projectId: 'weather-97eb0'
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Item(),
      builder: (context, child) => const  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomePage(),
      ),
    );
  }
}


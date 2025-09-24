import 'package:flutter/material.dart';
import 'package:grocerystoreapp/pages/home_page.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  // init the Hive
  await Hive.initFlutter();

  //Open a box
  await Hive.openBox('mybox');

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

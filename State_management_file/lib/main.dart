

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/counter_model.dart';
import 'package:state_managment/counter_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CounterModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const CounterPage(),
    );
  }
}
 
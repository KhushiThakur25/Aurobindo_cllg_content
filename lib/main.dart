import 'package:flutter/material.dart';
import 'package:routing_concept/screens/home_screen.dart';

void main(){
  runApp(MyRouting());
}

class MyRouting extends StatelessWidget {
  const MyRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Routing App",
      home: HomeScreen(),
    );
  }
}
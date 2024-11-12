import 'package:flutter/material.dart';
import 'package:routing_concept/screens/about_screen.dart';
import 'package:routing_concept/screens/contact_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const  AboutScreen()));
                },
                child:const  Text("Go to About screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ContactScreen()));
                },
                child:const Text("Go to Contact screen"))
          ],
        ),
      ),
    );
  }
}

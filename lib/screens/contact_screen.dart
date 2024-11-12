import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact page"),
      ),
      body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [Text("This is the contact page")],
          )),
    );
  }
}

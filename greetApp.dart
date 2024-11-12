import 'package:flutter/material.dart';

void main() {
  runApp(const MyGreetApp());
}

class MyGreetApp extends StatelessWidget {
  const MyGreetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Greet App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MyAppScreen(),
    );
  }
}

class MyAppScreen extends StatefulWidget {
  const MyAppScreen({super.key});

  @override
  State<MyAppScreen> createState() => _MyAppScreenState();
}

class _MyAppScreenState extends State<MyAppScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  String name = "______";
  String age = "______";

  void printText() {
    setState(() {
      name = nameController.text;
      age = ageController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Greet App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(187, 225, 214, 214),
              ),
              child: const Text(
                "Hello user ,please Enter your name and age..",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 17, 55, 122)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameController,
              // onChanged: (value) {
              //   printText();
              // },
              decoration: const InputDecoration(
                  labelText: "Enter name",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: ageController,
              decoration: const InputDecoration(
                  labelText: "Enter age",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 211, 105, 199),
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: printText,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: const Size(200, 50),
                  textStyle: const TextStyle(fontSize: 18)),
              child: const Text("Click here to start"),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Welcome $name ! ",
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "You're $age and fabulous. Let's make today fantastic!",
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

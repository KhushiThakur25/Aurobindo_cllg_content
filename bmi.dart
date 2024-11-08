import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI CALC app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.purple)),
      home: counterAppScreen(),
    );
  }
}

class counterAppScreen extends StatefulWidget {
  const counterAppScreen({super.key});

  @override
  State<counterAppScreen> createState() => _counterAppScreenState();
}

class _counterAppScreenState extends State<counterAppScreen> {
  String bmiResult = "";
  void calculateBMI() {
    setState(() {
      bmiResult = "perfect";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI Calculator"),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.monitor_weight)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Enter the height and weight for calculating BMI:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: "Height (cm)", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: "Weight (Kg)", border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: calculateBMI, child: const Text("calculate BMI"))
          ],
        ),
      ),
    );
  }
}

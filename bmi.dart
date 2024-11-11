import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI CALC app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.purple)),
      home: const CounterAppScreen(),
    );
  }
}

class CounterAppScreen extends StatefulWidget {
  const CounterAppScreen({super.key});

  @override
  State<CounterAppScreen> createState() => _CounterAppScreenState();
}

class _CounterAppScreenState extends State<CounterAppScreen> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  String bmiResult = "";
  String category = "";
  String message = "";
  void calculateBMI() {
    final double height = double.tryParse(heightController.text) ?? 0;
    final double weight = double.tryParse(weightController.text) ?? 0;
    if (height > 0 && weight > 0) {
      final double bmi = (weight * 10000) / (height * height);
      final targetWeight = 21.7 * (height / 100) * (height / 100);
      setState(() {
        bmiResult = bmi.toStringAsFixed(2);
        if (bmi < 18.5) {
          category = "Under weight";
          message =
              "You need to gain ${(targetWeight - weight).toStringAsFixed(2)} to become fit.";
        } else if (bmi >= 18.5 && bmi < 24.9) {
          category = "Perfect";
          message = "You are fit";
        } else {
          category = "over weight";
          message =
              "You need to loose ${(weight - targetWeight).toStringAsFixed(2)} to become fit";
        }
      });
    } else {
      message = "Invalid input";
    }
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
            TextField(
              controller: heightController,
              decoration: const InputDecoration(
                  labelText: "Height (cm)",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: weightController,
              decoration: const InputDecoration(
                  labelText: "Weight (Kg)",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple))),
            ),
            ElevatedButton(
              onPressed: calculateBMI,
              child: const Text("calculate BMI"),
            ),
            Text(
              "BMI : $bmiResult",
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text(
              "Category : $category",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 68, 74)),
            ),
            Text(
              " $message ",
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

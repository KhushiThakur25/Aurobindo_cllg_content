import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MaterialApp -

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: _my_CounterState(),
    );
  }
}

class _my_CounterState extends StatefulWidget {
  const _my_CounterState({super.key});

  @override
  State<_my_CounterState> createState() => __my_CounterStateState();
}

class __my_CounterStateState extends State<_my_CounterState> {
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Text(
          "Your count is.. $_counter",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: incrementCounter,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: decrementCounter,
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}

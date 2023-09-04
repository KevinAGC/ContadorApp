import 'package:contador_app/pages/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      theme:
          ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigoAccent),
      home: const CounterScreen(),
    );
  }
}

/*
void main() => runApp(MyApp);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contador',
      home: CounterScreen(),
    );
  }
}*/


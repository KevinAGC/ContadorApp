import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  String numClic = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter',
                style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w200,
                    color: Colors.indigo)),
            Text('Clic${counter == 1 ? '' : 's'}',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black)),
          ],
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          shape: const StadiumBorder(),
          onPressed: () {
            setState(() {
              counter = 0;
            });
          },
          child: const Icon(Icons.replay_rounded),
        ),
        FloatingActionButton(
          shape: const StadiumBorder(),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: const Icon(Icons.plus_one),
        ),
        FloatingActionButton(
          shape: const StadiumBorder(),
          onPressed: () {
            setState(() {
              if (counter != 0) counter--;
            });
          },
          child: const Icon(Icons.exposure_minus_1_rounded),
        ),
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icono;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icono, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child:Icon(icono),
    );
  }
}

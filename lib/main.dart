import 'package:flutter/material.dart';

void main() {
  runApp(MeninTirkemem());
}

class MeninTirkemem extends StatefulWidget {
  const MeninTirkemem({super.key});

  @override
  State<MeninTirkemem> createState() => _MeninTirkememState();
}

class _MeninTirkememState extends State<MeninTirkemem> {
  int counter = 0;

  Widget build(BuildContext) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, primaryColor: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 175, 92, 178),
          title: const Text(
            'Flutter kurs 15',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushet the button this many times'),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 28),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {});
                counter++;
                print(counter);
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                setState(() {});
                counter--;
                print(counter);
              },
            ),
          ],
        ),
      ),
    );
  }
}

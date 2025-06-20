import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _counter = 0;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
    print("Incrementing counter : $_counter");
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Counter : $_counter",
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    _counter--;
                  });
                },
                child: const Icon(Icons.remove, size: 30,),
              ),
              ElevatedButton(
                onPressed: incrementCounter,
                child: const Icon(Icons.add,size: 30,),
              ),
            ],
          )
        ],
      ),
    );
  }
}


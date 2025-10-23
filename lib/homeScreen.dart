import 'package:flutter/material.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$counter'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: _increment, child: Text('+')),
              ElevatedButton(onPressed: _decrement, child: Text('-')),
            ],
          )
        ],
      ),
    );
  }

  void _increment() {
        counter ++;
        setState(() {});
  }
  void _decrement() {
    counter --;
    setState(() {});
  }
}

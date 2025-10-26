import 'package:flutter/material.dart';
import 'package:state_management_with_provider/counter-controller.dart';
import 'package:state_management_with_provider/duplicate-home.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

final CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListenableBuilder(
            listenable: counterController,
            builder: (context, value) {
              return Text('${counterController.counter}', style: TextStyle(fontSize: 30));
            }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              ElevatedButton(onPressed: counterController.increment, child: Text('+', style: TextStyle(fontSize: 25),)),
              ElevatedButton(onPressed: counterController.decrement, child: Text('-', style: TextStyle(fontSize: 25),)),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: _nextButton, child: Icon(Icons.arrow_right),),
    );
  }

  void _nextButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DuplicateHome(counterController: counterController,

    )));
  }
}

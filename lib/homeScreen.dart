import 'package:flutter/material.dart';
import 'package:state_management_with_provider/counter-controller.dart';
import 'package:state_management_with_provider/duplicate-home.dart';
import 'package:state_management_with_provider/profile-screen.dart';

import 'counter-controller-inherited-widget.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = CounterControllerInheritedWidget.of(context)!.counterController;
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
              ElevatedButton(onPressed: counterController.decrement, child: Text('-', style: TextStyle(fontSize: 25),)),
              ElevatedButton(onPressed: counterController.increment, child: Text('+', style: TextStyle(fontSize: 25),)),
            ],
          ),
        ],
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: _nextButton, child: Icon(Icons.arrow_right),),
          FloatingActionButton(onPressed: _profileButton, child: Icon(Icons.person_2),)
        ],
      ),
    );
  }

  void _nextButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DuplicateHome()));
  }
  void _profileButton () {
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => profileScreen()));
  }
}

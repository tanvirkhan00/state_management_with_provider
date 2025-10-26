import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/counter-controller.dart';
import 'package:state_management_with_provider/duplicate-home.dart';
import 'package:state_management_with_provider/profile-screen.dart';
import 'package:state_management_with_provider/theme-controller.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterController>(
            builder: (context, controller, value) {
              return Text(
                '${controller.counter}',
                style: TextStyle(fontSize: 30),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              ElevatedButton(
                onPressed: context.read<CounterController>().decrement,
                child: Text('-', style: TextStyle(fontSize: 25)),
              ),
              ElevatedButton(
                onPressed: context.read<CounterController>().increment,
                child: Text('+', style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed:() => _nextButton(context),
            child: Icon(Icons.arrow_right),
          ),
          FloatingActionButton(
            onPressed:() =>  _profileButton(context),
            child: Icon(Icons.person_2),
          ),
          IconButton(onPressed: (){
            context.read<ThemeController>().toggleThemeMode();
          }, icon: Icon(Icons.sunny))
        ],
      ),
    );
  }

  void _nextButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DuplicateHome()),
    );
  }

  void _profileButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (ctx) => profileScreen()),
    );
  }
}

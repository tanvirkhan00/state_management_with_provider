import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/counter-controller.dart';


class profileScreen extends StatelessWidget {
  const profileScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterController>(
              builder: (context, controller, value) {
                return Text('${controller.counter}', style: TextStyle(fontSize: 30));
              }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              ElevatedButton(onPressed: context.read<CounterController>().decrement, child: Text('-', style: TextStyle(fontSize: 25),)),
              ElevatedButton(onPressed: context.read<CounterController>().increment, child: Text('+', style: TextStyle(fontSize: 25),)),
            ],
          ),
        ],
      ),
    );
  }
}

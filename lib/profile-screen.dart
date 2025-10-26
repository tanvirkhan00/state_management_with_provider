import 'package:flutter/material.dart';
import 'package:state_management_with_provider/counter-controller-inherited-widget.dart';
import 'package:state_management_with_provider/counter-controller.dart';


class profileScreen extends StatefulWidget {
  const profileScreen({super.key,});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = CounterControllerInheritedWidget.of(context)!.counterController;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListenableBuilder(
              listenable:counterController,
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
    );
  }
}

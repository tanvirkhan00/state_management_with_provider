import 'package:flutter/material.dart';
import 'package:state_management_with_provider/counter-controller.dart';


class DuplicateHome extends StatefulWidget {
  const DuplicateHome({
    super.key,
    required this.counterController
  });

  final CounterController counterController;

  @override
  State<DuplicateHome> createState() => _DuplicateHomeState();
}

class _DuplicateHomeState extends State<DuplicateHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListenableBuilder(
              listenable: widget.counterController,
              builder: (context, value) {
                return Text('${widget.counterController.counter}', style: TextStyle(fontSize: 30));
              }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              ElevatedButton(onPressed: widget.counterController.increment, child: Text('+', style: TextStyle(fontSize: 25))),
              ElevatedButton(onPressed: widget.counterController.decrement, child: Text('-', style: TextStyle(fontSize: 25))),
            ],
          )
        ],
      ),
    );
  }
}

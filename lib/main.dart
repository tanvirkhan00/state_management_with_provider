

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management_with_provider/counter-controller-inherited-widget.dart';
import 'package:state_management_with_provider/counter-controller.dart';
import 'package:state_management_with_provider/homeScreen.dart';

void main() {
  runApp(CrudApp());
}

class CrudApp extends StatefulWidget {
  const CrudApp({super.key});

  @override
  State<CrudApp> createState() => _CrudAppState();
}

class _CrudAppState extends State<CrudApp> {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = CounterController();
    return CounterControllerInheritedWidget(
       counterController: counterController,
      child: MaterialApp(
        title: 'Crud App',
        theme: ThemeData(colorSchemeSeed: Colors.blue),
        home: Homescreen(),
      ),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Crud App',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: Homescreen(),
    );
  }
}

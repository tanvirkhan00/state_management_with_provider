

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/counter-controller.dart';
import 'package:state_management_with_provider/homeScreen.dart';
import 'package:state_management_with_provider/theme-controller.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeController()),
        ChangeNotifierProvider(create: (_) => CounterController())
      ],
      child: Consumer<ThemeController>(
        builder: (context, ThemeController, _ ) {
          return MaterialApp(
            title: 'Counter App',
            theme: ThemeData(
              brightness: Brightness.light,
              colorSchemeSeed: Colors.blue
            ),
            themeMode: ThemeController.themeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark
            ),
            home: Homescreen(),
          );
        }
      ),
    );
  }
}

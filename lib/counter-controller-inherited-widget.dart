import 'package:flutter/cupertino.dart';
import 'package:state_management_with_provider/counter-controller.dart';

class CounterControllerInheritedWidget extends InheritedWidget {
  final CounterController counterController;

  const CounterControllerInheritedWidget({
    super.key,
    required super.child,
    required this.counterController
});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static CounterControllerInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CounterControllerInheritedWidget>();
  }

}
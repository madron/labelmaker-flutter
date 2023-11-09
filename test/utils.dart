import 'package:flutter/material.dart';


class TestWidgetsWrapper extends StatelessWidget {
  final Widget child;
  const TestWidgetsWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: child,),);
  }
}

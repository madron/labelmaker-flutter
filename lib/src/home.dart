import 'package:flutter/material.dart';
import 'label.dart';
import 'style.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}


class HomePageState extends State<HomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const LabelPage();
      case 1:
        page = const StylePage();
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: false,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.label),
                  label: Text('Label'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.style),
                  label: Text('Style'),
                ),
              ],
              // selectedIndex: 0,
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ),
          Expanded(
            child: page,
          ),
        ],
      ),
    );
  }
}

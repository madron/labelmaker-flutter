import 'package:flutter/material.dart';


class LabelPage extends StatelessWidget {
  const LabelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Label'),
      ),
      body: const Column(
        children: [
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'New Label',
        child: const Icon(Icons.add),
      ),
    );
  }
}

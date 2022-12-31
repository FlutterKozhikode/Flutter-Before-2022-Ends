import 'package:flutter/material.dart';

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile Example'),
      ),
      body: const ExpansionTile(
        title: Text('Flutter Kozhikode'),
        children: [
          ListTile(
            title: Text(
              'We are a community of Flutter developers. And we are cool, you know.',
            ),
          ),
        ],
      ),
    );
  }
}

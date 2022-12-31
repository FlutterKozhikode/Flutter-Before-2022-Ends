import 'package:flutter/material.dart';
import 'package:ftt/widgets/expansion_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Kozhikode'),
      ),
      body: const ExpansionTileExample(),
    );
  }
}

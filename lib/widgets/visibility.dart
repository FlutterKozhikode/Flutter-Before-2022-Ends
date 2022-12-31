import 'package:flutter/material.dart';

class VisibilityExample extends StatefulWidget {
  const VisibilityExample({super.key});

  @override
  State<VisibilityExample> createState() => _VisibilityExampleState();
}

class _VisibilityExampleState extends State<VisibilityExample> {
  bool _visible = true;
  void _toggleVisibility() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Visibility(
              visible: _visible,
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Tap on the button to toggle visibility"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleVisibility,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

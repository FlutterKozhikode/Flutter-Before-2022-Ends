import 'package:flutter/material.dart';

class Choice {
  Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;

  bool selected = false;
}

class ChoiceChips extends StatefulWidget {
  const ChoiceChips({super.key});

  @override
  State<ChoiceChips> createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  List<Choice> choices = [
    Choice(title: 'Home', icon: Icons.home),
    Choice(title: 'Search', icon: Icons.search),
    Choice(title: 'Settings', icon: Icons.settings),
    Choice(title: "Activity", icon: Icons.place_rounded)
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var choice in choices)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChoiceChip(
                selectedColor: Colors.blue.shade300,
                backgroundColor: Colors.grey.shade300,
                avatar: Icon(choice.icon),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(choice.title),
                ),
                selected: choice.selected,
                onSelected: (bool selected) {
                  setState(() {
                    choice.selected = selected;
                  });
                },
              ),
            )
        ],
      ),
    );
  }
}

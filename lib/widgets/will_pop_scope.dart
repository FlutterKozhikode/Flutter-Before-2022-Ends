import 'package:flutter/material.dart';

class WillPopScopeExample extends StatefulWidget {
  const WillPopScopeExample({super.key});

  @override
  State<WillPopScopeExample> createState() => _WillPopScopeExampleState();
}

class _WillPopScopeExampleState extends State<WillPopScopeExample> {
  Future<bool?> _askConfirmation(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to go back?'),
        actions: [
          TextButton(
            // User clicks on No then we return false
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            // User clicks on Yes then we return true
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show the dialog and wait for the user to confirm
        bool? confirmation = await _askConfirmation(context);

        // If the user confirms (that is true) the route will pop
        // If the user cancels (that is false) the route will not pop
        // If the dialog is dismissed (that is null) we'll use a default value (false)
        return confirmation ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Will Pop Scope Example'),
        ),
        body: const Center(
          child: Text('Press back button to see it in action'),
        ),
      ),
    );
  }
}

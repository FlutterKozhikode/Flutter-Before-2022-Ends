import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  /// The current step whose content is displayed.
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper Example'),
      ),
      body: Stepper(
        /// The current step whose content is displayed.
        currentStep: currentStep,

        /// Steps to display. A step can be disabled by setting
        /// [Step.isActive] to false.
        steps: const [
          Step(
            title: Text('Details'),
            content: Text('Content for Step 1'),
            isActive: true,
          ),
          Step(
            title: Text('Address'),
            content: Text('Content for Step 2'),
            isActive: true,
          ),
          Step(
            title: Text('Checkout'),
            content: Text('Content for Step 3'),
            isActive: true,
          ),
        ],

        /// Continue action
        onStepContinue: () {
          // Update the state i.e. increment the currentStep variable
          // when the user taps on the continue button.
          setState(() {
            if (currentStep < 2) {
              currentStep = currentStep + 1;
            } else {
              currentStep = 0;
            }
          });
        },

        // Cancel action
        onStepCancel: () {
          // Update the state i.e. decrement the currentStep variable
          // when the user taps on the cancel button.
          setState(() {
            if (currentStep > 0) {
              currentStep = currentStep - 1;
            } else {
              currentStep = 0;
            }
          });
        },
      ),
    );
  }
}

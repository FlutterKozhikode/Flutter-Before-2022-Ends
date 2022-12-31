import 'package:flutter/material.dart';
import 'package:ftt/widgets/examples.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              ExampleButton(
                exampleWidget: PageViewExample(),
                title: "Page View Example",
              ),
              SizedBox(height: 18),
              ExampleButton(
                exampleWidget: ExpansionTileExample(),
                title: "Expansion Tile Example",
              ),
              SizedBox(height: 18),
              ExampleButton(
                exampleWidget: HeroPageOne(),
                title: "Hero Example",
              ),
              SizedBox(height: 18),
              ExampleButton(
                exampleWidget: StepperExample(),
                title: "Stepper Example",
              ),
              SizedBox(height: 18),
              ExampleButton(
                exampleWidget: VisibilityExample(),
                title: "Visibility Example",
              ),
              SizedBox(height: 18),
              ExampleButton(
                exampleWidget: WillPopScopeExample(),
                title: "Will Pop Scope Example",
              ),
              SizedBox(height: 18),
              ExampleButton(
                exampleWidget: ExpandedExample(),
                title: "Expanded Example",
              ),
              SizedBox(height: 18),
              Divider(
                color: Colors.blueGrey,
                thickness: 2,
                height: 40,
              ),
              FlutterLogo(size: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class ExampleButton extends StatelessWidget {
  final Widget exampleWidget;
  final String title;
  const ExampleButton({
    super.key,
    required this.exampleWidget,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => exampleWidget,
            ),
          );
        },
        child: Text(title),
      ),
    );
  }
}

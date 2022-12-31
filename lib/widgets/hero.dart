import 'package:flutter/material.dart';

class HeroPageOne extends StatelessWidget {
  const HeroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Page One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HeroPageTwo(),
                  ),
                );
              },
              child: const Hero(
                tag: 'logoTag',
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Tap on the logo to see the hero animation'),
          ],
        ),
      ),
    );
  }
}

class HeroPageTwo extends StatelessWidget {
  const HeroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Page Two'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Hero(
            tag: 'logoTag',
            child: FlutterLogo(
              size: 400,
            ),
          ),
        ),
      ),
    );
  }
}

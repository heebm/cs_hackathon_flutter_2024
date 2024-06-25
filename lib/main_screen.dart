import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    IconAlignment _iconAlignment = IconAlignment.start;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Hello Flutter"),
            SizedBox(height: 20), // Adding some space between text and button
            ElevatedButton(
              onPressed: () {
                // Button onPressed action
              },

              child: Text("My Button"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.),
              label: const Text('ElevatedButton'),
              iconAlignment: _iconAlignment,
            ),
          ],
        ),
      ),
    );
  }
}


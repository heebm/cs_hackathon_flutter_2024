import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      // Center horizontally the text and button
      body: Center(
        // Order the text and button vertically one above the other
        child: Column(
          // Center vertically the text and button
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello Flutter"),
            // Add the button
            ElevatedButton(
              // Required parameter for what code to execute when button is pressed.
              // We set it here to an empty function.
              onPressed: () {},
              // Button text is set to My Button
              child: const Text("My Button"),
            )
          ],
        ),
      ),
    );
  }
}

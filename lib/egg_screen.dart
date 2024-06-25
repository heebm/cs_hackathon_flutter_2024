import 'package:flutter/material.dart';

class EggScreen extends StatefulWidget {
  EggScreen({super.key});

  @override
  State<EggScreen> createState() => _EggScreenState();
}

class _EggScreenState extends State<EggScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Egg Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: loadEggImage(),
              onTap: () {
                setState(() {
                  _count++;
                });
                debugPrint('Tapped $_count!');
              },
            ),
            Text(
              "$_count Clicks",
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _count = 0; // Resetting _count to 0
                  debugPrint('Resetting...!'); 
                });
              },
              icon: const Icon(Icons.refresh), // Icon to be displayed
              label: const Text('Again!'), // Text to be displayed
            ),
          ],
        ),
      ),
    );
  }

  loadEggImage() {
    var image = '';
    if (_count < 5) {
      image = 'assets/egg1.png';
    } else if (_count < 10) {
      image = 'assets/egg2.png';
    } else if (_count < 15) {
      image = 'assets/egg3.png';
    } else if (_count < 20) {
      image = 'assets/egg4.png';
    } else if (_count < 30) {
      image = 'assets/egg5.png';
    } else if (_count < 40) {
      image = 'assets/egg6.png';
    } else {
      image = 'assets/egg7.png';
    }

    return SizedBox(
      width: 300,
      height: 300,
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}

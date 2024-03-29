import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  // getColors
  Color getColor(String colorName) {
    switch (colorName) {
      case "red":
        return Colors.red;
      case "blue":
        return Colors.blue;
      case "green":
        return Colors.green;
      case "yellow":
        return Colors.yellow;
      case "purple":
        return Colors.purple;
      case "teal":
        return Colors.teal;
      default:
        return Colors.orange;
    }
  }

  // playSound
  Widget playSound(String colors, int soundNum) {
    return Expanded(
      child: Container(
        color: getColor(colors),
        child: TextButton(
          onPressed: () {
            final player = AudioCache();
            player.play('note$soundNum.wav');
          },
          child: const Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSound('red', 1),
              playSound('orange', 2),
              playSound('yellow', 3),
              playSound('green', 4),
              playSound('teal', 5),
              playSound('blue', 6),
              playSound('purple', 7),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int noteNumber) {
    final player = new AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(noteNumber);
        },
        child: null,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// Builds a widget tree that contains a [SafeArea] widget which contains a [Column]
  /// widget. The column contains a single [FlatButton] widget.
  ///
  /// This widget tree is used as the home of the [MaterialApp].
  ///
  /// The [SafeArea] widget is used to avoid overlapping the status bar and the
  /// notch on iOS devices.
  ///
  /// The [Column] widget is used to position the [FlatButton] widget at the center
  /// of the screen.
/******  fcbcc629-82c3-4df0-bd6d-1e206408edf1  *******/
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: Colors.red, noteNumber: 1),
          buildKey(color: Colors.orange, noteNumber: 2),
          buildKey(color: Colors.yellow, noteNumber: 3),
          buildKey(color: Colors.green, noteNumber: 4),
          buildKey(color: Colors.teal, noteNumber: 5),
          buildKey(color: Colors.blue, noteNumber: 6),
          buildKey(color: Colors.purple, noteNumber: 7),
        ],
      ),
    );
  }
}

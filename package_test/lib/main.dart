import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Test"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
               player.play(AssetSource('audios/marching-loop.aif.mp3'));
              },
              child: Text("click me")),
        ),
      ),
    );
  }
}

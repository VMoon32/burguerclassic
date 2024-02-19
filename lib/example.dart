import 'package:flutter/material.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';

class Emojis extends StatefulWidget {
  const Emojis({super.key});

  @override
  State<Emojis> createState() => _EmojisState();
}

class _EmojisState extends State<Emojis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmojiFeedback(
                onChanged: (value) {
                  print(value);
                },
              )
            ],
          ),
        ),
      ),
        ],
      ),
    );
  }
}


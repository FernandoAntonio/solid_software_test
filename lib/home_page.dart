import 'dart:math' as math;

import 'package:flutter/material.dart';

/// The HomePage is the only page in the app and is where
/// the random color generation is placed
class HomePage extends StatefulWidget {
  /// HomePage constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;

  void _randomizeColor() {
    final randomColorValue = math.Random().nextInt(16777216);
    final newColor = Color(randomColorValue).withOpacity(1.0);
    setState(() => _backgroundColor = newColor);
  }

  Color _getContrastingColor() {
    final brightness = ThemeData.estimateBrightnessForColor(_backgroundColor);
    return brightness == Brightness.light ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _randomizeColor,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Solid Software Test"),
        ),
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          color: _backgroundColor,
          child: Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontSize: 64,
                color: _getContrastingColor(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

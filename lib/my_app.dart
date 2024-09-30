import 'package:flutter/material.dart';
import 'package:solid_software_test/home_page.dart';

/// MyApp creates the MaterialApp needed as first widget in the tree
class MyApp extends StatelessWidget {
  /// MyApp constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

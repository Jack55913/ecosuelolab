import 'package:flutter/material.dart';

class SoilColorScreen extends StatefulWidget {
  const SoilColorScreen({super.key});

  @override
  State<SoilColorScreen> createState() => _SoilColorScreenState();
}

class _SoilColorScreenState extends State<SoilColorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color'),
      ),
    );
  }
}

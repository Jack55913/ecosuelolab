import 'package:flutter/material.dart';

class RealDensityScreen extends StatefulWidget {
  const RealDensityScreen({super.key});

  @override
  State<RealDensityScreen> createState() => _RealDensityScreenState();
}

class _RealDensityScreenState extends State<RealDensityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Densidad Real'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HConductivityScreen extends StatefulWidget {
  const HConductivityScreen({super.key});

  @override
  State<HConductivityScreen> createState() => _HConductivityScreenState();
}

class _HConductivityScreenState extends State<HConductivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conductividad Hidráulica'),
      ),
    );
  }
}

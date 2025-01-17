import 'package:flutter/material.dart';

class MicroActScreen extends StatefulWidget {
  const MicroActScreen({super.key});

  @override
  State<MicroActScreen> createState() => _MicroActScreenState();
}

class _MicroActScreenState extends State<MicroActScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Potencial Z'),
      ),
    );
  }
}

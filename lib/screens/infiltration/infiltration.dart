import 'package:flutter/material.dart';

class InfiltrationScreen extends StatefulWidget {
  const InfiltrationScreen({super.key});

  @override
  State<InfiltrationScreen> createState() => _InfiltrationScreenState();
}

class _InfiltrationScreenState extends State<InfiltrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Potencial Z'),
      ),
    );
  }
}

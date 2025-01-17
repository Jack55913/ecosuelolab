import 'package:flutter/material.dart';

class PorosityScreen extends StatefulWidget {
  const PorosityScreen({super.key});

  @override
  State<PorosityScreen> createState() => _PorosityScreenState();
}

class _PorosityScreenState extends State<PorosityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Porosidad'),
      ),
    );
  }
}

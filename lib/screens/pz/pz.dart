import 'package:flutter/material.dart';

class PzScreen extends StatefulWidget {
  const PzScreen({super.key});

  @override
  State<PzScreen> createState() => _PzScreenState();
}

class _PzScreenState extends State<PzScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Potencial Z'),
      ),
    );
  }
}

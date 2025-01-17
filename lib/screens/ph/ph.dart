import 'package:flutter/material.dart';

class PHScreen extends StatefulWidget {
  const PHScreen({super.key});

  @override
  State<PHScreen> createState() => _PHScreenState();
}

class _PHScreenState extends State<PHScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Potencial Hidrógeno pH'),
      ),
    );
  }
}

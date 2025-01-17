import 'package:flutter/material.dart';

class CICScreen extends StatefulWidget {
  const CICScreen({super.key});

  @override
  State<CICScreen> createState() => _CICScreenState();
}

class _CICScreenState extends State<CICScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Capacidad de Intercambio Catiónico'),
      ),
    );
  }
}

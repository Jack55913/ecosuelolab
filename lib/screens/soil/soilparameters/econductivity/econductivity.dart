import 'package:flutter/material.dart';

class EConudctivityScreen extends StatefulWidget {
  const EConudctivityScreen({super.key});

  @override
  State<EConudctivityScreen> createState() => _EConudctivityScreenState();
}

class _EConudctivityScreenState extends State<EConudctivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conductividad Eléctrica'),
      ),
    );
  }
}

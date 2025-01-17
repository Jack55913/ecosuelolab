import 'package:ecosuelolab/models/constants.dart';
import 'package:flutter/material.dart';

class HydrosatPage extends StatefulWidget {
  const HydrosatPage({super.key});

  @override
  State<HydrosatPage> createState() => _HydrosatPageState();
}

class _HydrosatPageState extends State<HydrosatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Ecosuelolab',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Parámetro 1',
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

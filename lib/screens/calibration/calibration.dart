import 'package:ecosuelolab/models/constants.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class CalibrationPage extends StatefulWidget {
  const CalibrationPage({super.key});

  @override
  State<CalibrationPage> createState() => _CalibrationPageState();
}

class _CalibrationPageState extends State<CalibrationPage> {
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
              InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri("https://docs.google.com/document/d/1vnr7UVDlcPx_1DjoHr2niNTCjL5DJYS1QZwRVfJy68w/edit?usp=sharing")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

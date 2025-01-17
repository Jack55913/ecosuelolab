import 'package:ecosuelolab/models/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

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
      body: Column(
        children: [
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                  url: WebUri(
                      "https://docs.google.com/document/d/1ebO2cC3fwg_guXNIZrm3clK9-0HdDibwONUGZdRj9g4/edit?usp=sharing")),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class IrriwatchPage extends StatefulWidget {
  const IrriwatchPage({super.key});

  @override
  State<IrriwatchPage> createState() => _IrriwatchPageState();
}

class _IrriwatchPageState extends State<IrriwatchPage> {
  String url =
      'https://docs.google.com/document/d/1PQ5IE2kJH9hX-2mCSd-OH50z9_0oJiDbZliEH8Yg_U0/edit?usp=sharing';

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
              initialUrlRequest: URLRequest(url: WebUri(url)),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:ecosuelolab/app.dart';
import 'package:ecosuelolab/models/constants.dart';
import 'package:flutter/material.dart';
// import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecosuelolab',
      theme: ecoTheme,
      home: const MyHomePage(),
    );
  }
}

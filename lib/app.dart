import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentStep = 'inicio';
  final List<String> stepHistory = []; // Historial de pasos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Determinación de Textura al Tacto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _buildStepWidgets(),
        ),
      ),
    );
  }

  List<Widget> _buildStepWidgets() {
    List<Widget> widgets = [];

    // Botón para regresar al paso anterior (si hay historial)
    if (stepHistory.isNotEmpty) {
      widgets.add(ElevatedButton(
        onPressed: _goToPreviousStep,
        child: const Text('Regresar'),
      ));
      widgets.add(const SizedBox(height: 20));
    }

    if (currentStep == 'inicio') {
      widgets.add(const Text(
        'Ponga 25g de suelo en la mano, moje y amase. ¿El suelo está plástico y moldeable, como plastilina húmeda?',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('bola'),
        child: const Text('Continuar'),
      ));
      // widgets.add(ElevatedButton(
      //   onPressed: () => _goToStep('muyHumedo'),
      //   child: const Text('No'),
      // ));
    } else if (currentStep == 'seco') {
      widgets.add(const Text(
        '¿Está muy seco?',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('repetir'),
        child: const Text('Sí'),
      ));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('muyHumedo'),
        child: const Text('No'),
      ));
    } else if (currentStep == 'muyHumedo') {
      widgets.add(const Text(
        'Agregue suelo seco para absorber agua.',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('inicio'),
        child: const Text('Continuar'),
      ));
    } else if (currentStep == 'repetir') {
      widgets.add(const Text(
        'Repita el proceso inicial.',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('inicio'),
        child: const Text('Reiniciar'),
      ));
    } else if (currentStep == 'bola') {
      widgets.add(const Text(
        '¿Forma una bola cuando se aprieta?',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('cinta'),
        child: const Text('Sí'),
      ));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('seco'),
        child: const Text('No'),
      ));
    } else if (currentStep == 'arena') {
      widgets.add(const Text(
        'El suelo es Arena.',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('inicio'),
        child: const Text('Reiniciar'),
      ));
    } else if (currentStep == 'cinta') {
      widgets.add(const Text(
        'Tome al suelo entre pulgar e índice, empuje con el pulgar, apriete para arriba y forme una cima de espesor y ancho uniforme. Permita que emerja la cinta hasta que se quiebre.',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('cordon'),
        child: const Text('Sí'),
      ));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('arena'),
        child: const Text('No'),
      ));
    } else if (currentStep == 'cordon') {
      widgets.add(const Text(
        '¿Forma un cordón fuerte de >5cm antes de quebrarse?',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('saturacion'),
        child: const Text('Sí'),
      ));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('arena'),
        child: const Text('No'),
      ));
    } else if (currentStep == 'arena') {
      widgets.add(const Text(
        'El suelo es Arenoso.',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('inicio'),
        child: const Text('Reiniciar'),
      ));
    } else if (currentStep == 'saturacion') {
      widgets.add(const Text(
        'Sature en la mano una pequeña cantidad de suelo y frote con el dedo índice. ¿Es muy áspero?',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('francoArenoso'),
        child: const Text('Sí'),
      ));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('francoLimoso'),
        child: const Text('No'),
      ));
    } else if (currentStep == 'francoArenoso') {
      widgets.add(const Text(
        'El suelo es Franco Arenoso.',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('inicio'),
        child: const Text('Reiniciar'),
      ));
    } else if (currentStep == 'francoLimoso') {
      widgets.add(const Text(
        '¿Es muy suave?',
        style: TextStyle(fontSize: 18),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('franco'),
        child: const Text('Sí'),
      ));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('arcilloso'),
        child: const Text('No'),
      ));
    } else if (currentStep == 'franco') {
      widgets.add(const Text(
        'El suelo es Franco.',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('inicio'),
        child: const Text('Reiniciar'),
      ));
    } else if (currentStep == 'arcilloso') {
      widgets.add(const Text(
        'El suelo es Arcilloso.',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton(
        onPressed: () => _goToStep('inicio'),
        child: const Text('Reiniciar'),
      ));
    }

    return widgets;
  }

  void _goToStep(String step) {
    stepHistory.add(currentStep); // Guardar el paso actual en el historial
    setState(() {
      currentStep = step;
    });
  }

  void _goToPreviousStep() {
    if (stepHistory.isNotEmpty) {
      setState(() {
        currentStep = stepHistory.removeLast(); // Recuperar el último paso
      });
    }
  }
}

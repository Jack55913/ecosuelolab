import 'package:flutter/material.dart';

class TextureScreen extends StatefulWidget {
  const TextureScreen({super.key});

  @override
  _TextureScreenState createState() => _TextureScreenState();
}

class _TextureScreenState extends State<TextureScreen> {
  String currentStep = 'inicio';
  final List<String> stepHistory = [];

  final Map<String, Map<String, dynamic>> steps = {
    'inicio': {
      'text':
          'Ponga 25g de suelo en la mano, moje y amase. ¿El suelo está plástico y moldeable, como plastilina húmeda?',
      'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
      'options': {'Continuar': 'bola'}
    },
    'seco': {
      'text': '¿Está muy seco?',
      'options': {'Sí': 'repetir', 'No': 'muyHumedo'}
    },
    'muyHumedo': {
      'text': 'Agregue suelo seco para absorber agua.',
      'options': {'Continuar': 'inicio'}
    },
    'repetir': {
      'text': 'Repita el proceso inicial.',
      'options': {'Reiniciar': 'inicio'}
    },
    'bola': {
      'text': '¿Forma una bola cuando se aprieta?',
      'options': {'Sí': 'cinta1', 'No': 'seco'}
    },
    'arena': {'text': 'El suelo es Arena.', 'final': true},
    'cinta1': {
      'text':
          'Tome el suelo entre pulgar e índice, empuje con el pulgar, apriete para arriba y forme una cima de espesor y ancho uniforme.',
      'options': {'Sí': 'cinta', 'No': 'arena'}
    },
    'cinta': {
      'text': '¿El suelo forma una cinta?',
      'options': {'Sí': 'cordon', 'No': 'arenofranco'}
    },
    'arenofranco': {'text': 'El suelo es Areno Franco.', 'final': true},
    'cordon': {
      'text': '¿Forma un cordón débil de < 2.5cm antes de quebrarse?',
      'options': {'Sí': 'saturacion1', 'No': 'cordon2'}
    },
    'cordon2': {
      'text': '¿Forma un cordón débil de 2.5 cm antes de quebrarse?',
      'options': {'Sí': 'saturacion2', 'No': 'cordon3'}
    },
    'cordon3': {
      'text': '¿Forma un cordón fuerte de < 5 cm antes de quebrarse?',
      'options': {'Sí': 'saturacion3'}
    },
    'saturacion1': {
      'text':
          'Sature en la mano una pequeña cantidad de suelo y frote con el dedo índice. ¿Es muy áspero?',
      'options': {'Sí': 'francoArenoso', 'No': 'francoLimoso'},
    },
    'francoArenoso': {'text': 'El suelo es Franco Arenoso.', 'final': true},
    'francoLimoso': {
      'text': '¿Es muy suave?',
      'options': {'Sí': 'francolimoso', 'No': 'franco'},
    },
    'francolimoso': {'text': 'El suelo es Franco Limoso.', 'final': true},
    'franco': {'text': 'El suelo es Franco.', 'final': true},
    'saturacion2': {
      'text':
          'Sature en la mano una pequeña cantidad de suelo y frote con el dedo índice. ¿Es muy áspero?',
      'options': {'Sí': 'FrancoArenoArcilloso', 'No': 'FrancoArcilloLimo'},
    },
    'FrancoArenoArcilloso': {
      'text': 'El suelo es Franco Areno Arcilloso.',
      'final': true
    },
    'FrancoArcilloLimo': {
      'text': '¿Es muy suave?',
      'options': {'Sí': 'FrancoArcilloLimo1', 'No': 'FrancoArcilloso'},
    },
    'FrancoArcilloLimo1': {
      'text': 'El suelo es Franco Arcillo Limo.',
      'final': true
    },
    'FrancoArcilloso': {'text': 'El suelo es Franco Arcilloso.', 'final': true},
    'saturacion3': {
      'text': '¿Es muy áspero?',
      'options': {'Sí': 'Arenoarcilloso', 'No': 'LimoArcilloso'},
    },
    'Arenoarcilloso': {'text': 'El suelo es Areno Arcilloso.', 'final': true},
    'LimoArcilloso': {
      'text': '¿Es muy suave?',
      'options': {'Sí': 'LimoArcilloso1', 'No': 'Arcilloso'},
    },
    'LimoArcilloso1': {'text': 'El suelo es Limo Arcilloso.', 'final': true},
    'Arcilloso': {'text': 'El suelo es Arcilloso.', 'final': true},
  };

  void _goToStep(String step) {
    setState(() {
      stepHistory.add(currentStep);
      currentStep = step;
    });
  }

  void _goToPreviousStep() {
    setState(() {
      if (stepHistory.isNotEmpty) {
        currentStep = stepHistory.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final stepData = steps[currentStep]!;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: _goToPreviousStep,
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Determinación de Textura al Tacto',
            style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 5),
              Text(stepData['text'], style: const TextStyle(fontSize: 18)),
              if (stepData.containsKey('image')) ...[
                const SizedBox(height: 20),
                Image.network(stepData['image']),
              ],
              const SizedBox(height: 20),
              if (!stepData.containsKey('final'))
                ...stepData['options'].entries.map((entry) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        onPressed: () => _goToStep(entry.value),
                        child: Text(entry.key),
                      ),
                    )),
              if (stepData.containsKey('final'))
                ElevatedButton(
                  onPressed: () => _goToStep('inicio'),
                  child: const Text('Reiniciar'),
                )
            ],
          ),
        ),
      ),
    );
  }
}

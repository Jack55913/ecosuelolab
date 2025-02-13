import 'package:ecosuelolab/screens/soil/soilparameters/texture/texture_calc.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_tex/flutter_tex.dart';

class Parafine extends StatefulWidget {
  const Parafine({super.key});

  @override
  _ParafineState createState() => _ParafineState();
}

class _ParafineState extends State<Parafine> {
  // Mapa para almacenar el estado de cada ítem
  Map<String, bool> checklistItems = {
    'Parafine Uhland': false,
    'Botes de aluminio': false,
    'Estufa': false,
    'Báscula': false,
  };

  // Función para verificar si todos los ítems están seleccionados
  bool get allItemsSelected {
    return checklistItems.values.every((isChecked) => isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selecciona el Material y Equipo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: checklistItems.keys.map((String key) {
                return CheckboxListTile(
                  title: Text(key),
                  value: checklistItems[key],
                  onChanged: (bool? value) {
                    setState(() {
                      checklistItems[key] = value!;
                    });
                  },
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: allItemsSelected
                  ? () {
                      // Navegar a la primera página de procedimiento
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextPage1(),
                        ),
                      );
                    }
                  : null, // Deshabilitar el botón si no todos están seleccionados
              child: const Text('Continuar'),
            ),
          ),
        ],
      ),
    );
  }
}

// Datos de cada paso del procedimiento
final List<Map<String, String>> steps = [
  {
    'text': 'De cada profundidad en la que se colectó el suelo se obtiene un terrón del tamaño de una nuez, el cual debe cuidarse que no se desmorone. ',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Se lleva al laboratorio y se seca en una estufa a 1100C hasta llegar a peso constante para obtener el peso del suelo seco (PSS). ',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'En el laboratorio se derrite la parafina, luego, se amarra cada terrón seco con un hilo y se cubre con la parafina líquida, para que posteriormente se deje enfriar. ',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Posteriormente, sujetando con el hilo el terrón cubierto con parafina, se pesa previamente y se introduce en una probeta graduada con capacidad de 500 mL que previamente tenga 300 mL de agua ',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Se registra el volumen de agua desplazado, lo cual se considerará como volumen total (Vt).  ',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
];

// Página genérica para cada paso del procedimiento
class NextPage extends StatelessWidget {
  final String text;
  final String image;
  final int currentStep;
  final int totalSteps;

  const NextPage({
    super.key,
    required this.text,
    required this.image,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procedimiento - Paso $currentStep'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(image), // Imagen de internet
                  const SizedBox(height: 20),
                  Text(
                    text,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentStep > 1)
                  ElevatedButton(
                    onPressed: () {
                      // Navegar a la página anterior
                      Navigator.pop(context);
                    },
                    child: const Text('Regresar'),
                  ),
                if (currentStep < totalSteps)
                  ElevatedButton(
                    onPressed: () {
                      // Navegar a la siguiente página
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextPage(
                            text: steps[currentStep]['text']!,
                            image: steps[currentStep]['image']!,
                            currentStep: currentStep + 1,
                            totalSteps: totalSteps,
                          ),
                        ),
                      );
                    },
                    child: const Text('Continuar'),
                  ),
                if (currentStep == totalSteps)
                  ElevatedButton(
                    onPressed: () {
                      // Reiniciar al inicio
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TexturaSueloScreen(),
                        ),
                        (route) => false, // Elimina todas las rutas anteriores
                      );
                    },
                    child: const Text('Calcular Densidad'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Páginas específicas para cada paso
class NextPage1 extends StatelessWidget {
  const NextPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return NextPage(
      text: steps[0]['text']!,
      image: steps[0]['image']!,
      currentStep: 1,
      totalSteps: steps.length,
    );
  }
}

class NextPage2 extends StatelessWidget {
  const NextPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return NextPage(
      text: steps[1]['text']!,
      image: steps[1]['image']!,
      currentStep: 2,
      totalSteps: steps.length,
    );
  }
}

class NextPage3 extends StatelessWidget {
  const NextPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return NextPage(
      text: steps[2]['text']!,
      image: steps[2]['image']!,
      currentStep: 3,
      totalSteps: steps.length,
    );
  }
}

class NextPage4 extends StatelessWidget {
  const NextPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return NextPage(
      text: steps[3]['text']!,
      image: steps[3]['image']!,
      currentStep: 4,
      totalSteps: steps.length,
    );
  }
}

class NextPage5 extends StatelessWidget {
  const NextPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return NextPage(
      text: steps[4]['text']!,
      image: steps[4]['image']!,
      currentStep: 5,
      totalSteps: steps.length,
    );
  }
}

class NextPage6 extends StatelessWidget {
  const NextPage6({super.key});

  @override
  Widget build(BuildContext context) {
    return NextPage(
      text: steps[5]['text']!,
      image: steps[5]['image']!,
      currentStep: 6,
      totalSteps: steps.length,
    );
  }
}

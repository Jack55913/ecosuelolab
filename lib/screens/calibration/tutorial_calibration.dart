import 'package:ecosuelolab/screens/soil/soilparameters/adensity/calc_density.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/texture_calc.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_tex/flutter_tex.dart';

class CalibrationTutorial extends StatefulWidget {
  const CalibrationTutorial({super.key});

  @override
  _CalibrationTutorialState createState() => _CalibrationTutorialState();
}

class _CalibrationTutorialState extends State<CalibrationTutorial> {
  // Mapa para almacenar el estado de cada ítem
  Map<String, bool> checklistItems = {
    'Barreno Uhland': false,
    'Tres bolsas ó botes de aluminio de muestreo': false,
    'Etiquetas': false,
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
    'text':
        'Con el barreno, extraer una muestra de suelo en la raíz, entre planta, y entre surco a la misma profundidad que estará determinada por el espacio donde hay mayor raíces',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'En la báscula, eliminar el peso del contenedor de la muestra y registrar el peso de suelo húmero',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Se secará en la estufa a 110°C hasta tener un peso constante (PSS), lo cual suele ocurrir aproximadamente en 24 horas.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text': 'El volumen total se obtiene con las dimensiones del cilindro.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text': 'Obtener la humedad Gravimétrica.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Obtener la humedad Volumétrica multiplicando por la densidad aparente a la humedad gravimétrica.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text': 'de IrriWatch, obtener el dato de humedad en el día de medición',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text': 'Hacer la comparación estadística',
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
                          builder: (context) => const DensidadAparenteScreen(),
                        ),
                        (route) => false, // Elimina todas las rutas anteriores
                      );
                    },
                    child: const Text('Calibrar IrriWatch'),
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

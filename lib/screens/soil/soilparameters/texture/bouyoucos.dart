import 'package:ecosuelolab/screens/soil/soilparameters/texture/texture_calc.dart';
import 'package:flutter/material.dart';

class Bouyoucos extends StatefulWidget {
  const Bouyoucos({super.key});

  @override
  _BouyoucosState createState() => _BouyoucosState();
}

class _BouyoucosState extends State<Bouyoucos> {
  // Mapa para almacenar el estado de cada ítem
  Map<String, bool> checklistItems = {
    'Hidrómetro de Bouyoucos con escala de 0-60': false,
    'Probetas de 1000 cc': false,
    'Cilindro de Bouyoucos': false,
    'Agitador con motor para dispersión': false,
    'Agitador de mano': false,
    'Termómetro de -10 a 110°C': false,
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
        'Pesar 60 g de suelo de textura fino o 120 g de suelo de textura gruesa en un vaso de precipitados de 500 ml agregar 40 ml de agua oxigenada y poner a evaporar hasta sequedad, agregar otros 40 ml y observar la reacción. Evaporar nuevamente a sequedad. Repetir hasta que no haya efervescencia al agua oxigenada.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'En general dos ataques son suficientes para la mayoría de suelos. Después de eliminar la materia orgánica y llevar a sequedad el suelo, pesar 50 g de suelo de textura arcillosa o 100 g de suelo de textura arenosa y ponerlos en un vaso de precipitados de 250 ml. Adicionar agua hasta cubrir la superficie con una lámina de 2 cm. Agregar 5 ml de oxalato de sodio y 5 ml de metasilicato de sodio y dejar reposar durante 15 minutos. Si el suelo tiene mucha arcilla puede prolongarse el tiempo hasta media hora.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Pasar las muestras de los vasos de precipitado a las copas del agitador mecánico, pasando todo el material con la ayuda de una piceta. Activar los agitadores y proceder a dispersar cinco minutos. Al finalizar el tiempo de agitación, bajar la copa del dispersor y pasar el contenido a una probeta de 1000 ml o al cilindro de Bouyoucos enjuagando la copa con ayuda de una piceta.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Agregar agua destilada hasta completar un litro con el hidrómetro dentro de la suspensión en el caso de la probeta y si utiliza el cilindro de Bouyoucos llevar a la marca inferior (1113 ml) con el hidrómetro dentro de la suspensión. Sacar el hidrómetro y suspender el suelo con un agitador de mano operando durante un minuto.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Tomar las lecturas del hidrómetro a los 40 segundos y después de 2 horas de terminada la dispersión con el agitador de mano.',
    'image': 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  },
  {
    'text':
        'Para hacer una lectura, colocar el hidrómetro dentro de la probeta 20 segundos antes del momento de la determinación, cuidando de alterar lo menos posible la suspensión. Después de hacer la lectura se seca el hidrómetro, se lava, se seca y se toma la temperatura. Si por alguna razón al hacer la lectura se acumula espuma alrededor del hidrómetro, agregar unas gotas de alcohol etílico.',
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
                    child: const Text('Calcular Textura'),
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

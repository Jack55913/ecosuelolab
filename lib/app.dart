import 'package:ecosuelolab/models/constants.dart';
import 'package:ecosuelolab/screens/soil/soil.dart';
import 'package:ecosuelolab/widgets/container.dart';
import 'package:ecosuelolab/widgets/tutorials.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ecosuelolab',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Bienvenido, Ecosuelero',
                        style: TextStyle(
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown[300],
                    child: Icon(
                      Icons.science,
                      color: Colors.brown[900],
                    ),
                  ),
                  title: const Text('Sistema Suelo'),
                  subtitle: const Text(
                      'Es un cuerpo natural y dinámico que posee propiedades y características del tipo físico, químico y biológico que forman un sistema.'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SoilPage()),
                    );
                  },
                ),
                const Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown[300],
                    child: Icon(
                      Icons.satellite_alt,
                      color: Colors.brown[900],
                    ),
                  ),
                  title: const Text('Parámetros Irriwatch'),
                  subtitle: const Text(
                      'Software que proporciona datos de riego, a través de un satélite'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SoilPage()),
                    );
                  },
                ),
                const Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown[300],
                    child: Icon(
                      Icons.file_copy,
                      color: Colors.brown[900],
                    ),
                  ),
                  title: const Text('Protocolo de calibración'),
                  subtitle: const Text('Irriwatch y mediciones en campo'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SoilPage()),
                    );
                  },
                ),
                const Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown[300],
                    child: Icon(
                      Icons.water_drop,
                      color: Colors.brown[900],
                    ),
                  ),
                  title: const Text('Beneficios de Hydrosat'),
                  subtitle:
                      const Text('Eficiencia hídrica de ciencas hidrográficas'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SoilPage()),
                    );
                  },
                ),
                const Divider(
                  thickness: 1,
                ),
                DarkContainerWidget(
                  data: DarkContainer(
                    fill: const TutorialWidget(),
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ));
  }
}

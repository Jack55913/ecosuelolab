import 'package:ecosuelolab/screens/irriwatch/parameters.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/texture_menu.dart';
import 'package:flutter/material.dart';

class WaterSoil extends StatefulWidget {
  const WaterSoil({super.key});

  @override
  State<WaterSoil> createState() => _WaterSoilState();
}

class _WaterSoilState extends State<WaterSoil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sistema Agua-Suelo'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Expresiones de la humedad del suelo',
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.water_drop,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Contenido de humedad del suelo'),
            subtitle: const Text('Proximamente.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Parameters()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.poll,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Esfuerzo de humedad del suelo'),
            subtitle: const Text('Proximamente.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Parameters()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.air,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Histéresis suelo'),
            subtitle: const Text('Proximamente.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Parameters()),
              );
            },
          ),
        ],
      ),
    );
  }
}

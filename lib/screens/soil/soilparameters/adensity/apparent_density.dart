import 'package:ecosuelolab/screens/soil/soilparameters/adensity/barrena.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/adensity/parafine.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/bouyoucos.dart';
import 'package:flutter/material.dart';

class Adensity extends StatefulWidget {
  const Adensity({super.key});

  @override
  State<Adensity> createState() => _AdensityState();
}

class _AdensityState extends State<Adensity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Densidad Aparente',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.agriculture,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Método de campo utilizando barrena'),
            subtitle: const Text('Calculo de campo'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Barrena()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.science,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Método del terrón y parafina'),
            subtitle: const Text('Calculo de laboratorio'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Parafine()),
              );
            },
          ),
        ],
      ),
    );
  }
}

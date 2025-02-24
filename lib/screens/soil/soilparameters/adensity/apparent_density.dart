import 'package:ecosuelolab/screens/soil/soilparameters/adensity/barrena.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/adensity/calc_density.dart';
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
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.calculate,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Calculadora de la Densidad Aparente'),
            subtitle: const Text('Datos de Masa y volumen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DensidadAparenteScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}











//  Su valor se utiliza para el cálculo de la porosidad total del suelo, inferir procesos de compactación del suelo, calcular la masa de un suelo en un área con una profundidad determinada y el cálculo del carbono capturado por un suelo

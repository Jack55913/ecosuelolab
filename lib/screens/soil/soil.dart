import 'package:ecosuelolab/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/econductivity/econductivity.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/hconductivity/hconductivity.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/infiltration/infiltration.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/microbian_activity/microbian_activity.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/porosity/porosity.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/pz/pz.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/RealDensity/real_density.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/adensity/apparent_density.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/cic/cic.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/color/color.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/ph/ph.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/structure/structure.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/tconductivity/tconductivity.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/texture_menu.dart';

class SoilPage extends StatefulWidget {
  const SoilPage({super.key});

  @override
  State<SoilPage> createState() => _SoilPageState();
}

class _SoilPageState extends State<SoilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
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
                      'Propiedades Físicas del Suelo',
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
                    Icons.texture,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Textura'),
                subtitle: const Text(
                    'Es la proporción relativa de arena, limo y arcilla del suelo.'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextureMenu()),
                  );
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.tonality,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Color'),
                subtitle: const Text('Tablas de Munsell'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SoilColorScreen()),
                  );
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.density_small,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Densidad Real'),
                subtitle: const Text('Es igual a 2.65g/cm^3'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const RealDensityScreen()),
                  // );
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Propiedades Químicas del Suelo',
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
                    Icons.straighten,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('pH '),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PHScreen()),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Propiedades Físicas-Químicas del Suelo',
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
                    Icons.electric_bolt,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Capacidad de Intercambio Catiónico'),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CICScreen()),
                  );
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.zoom_out_map,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Potencial Z'),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PzScreen()),
                  );
                },
              ),
              const Row(
                children: [
                  Text(
                    'Características Físicas del Suelo',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.landslide,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Estructura '),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StructureScreen()),
                  );
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.density_large,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Densidad Aparente '),
                subtitle: const Text(
                    'Es el cociente que resulta de dividir el peso de suelo seco entre el volumen total, incluyendo los poros en g/cm3.'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Adensity()),
                  );
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.space_dashboard_rounded,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Porosidad '),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PorosityScreen()),
                  );
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.water_drop,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Conductividad Hidráulica'),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HConductivityScreen()),
                  );
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.water,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Infiltración del Agua en el Suelo'),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InfiltrationScreen()),
                  );
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.brown[300],
                  child: Icon(
                    Icons.thermostat,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Conductividad Térmica '),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TConudctivityScreen()),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Características Químicas del Suelo',
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
                    Icons.electrical_services_sharp,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Conductividad eléctrica '),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EConudctivityScreen()),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Características Biológicas del Suelo',
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
                    Icons.co2,
                    color: Colors.brown[900],
                  ),
                ),
                title: const Text('Actividad microbiana '),
                subtitle: const Text('¡Próximamente!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MicroActScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

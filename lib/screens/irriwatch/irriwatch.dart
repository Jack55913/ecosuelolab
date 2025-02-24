import 'package:ecosuelolab/screens/irriwatch/emioutput.dart';
import 'package:ecosuelolab/screens/irriwatch/input.dart';
import 'package:ecosuelolab/screens/irriwatch/output.dart';
import 'package:ecosuelolab/screens/irriwatch/parameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IrriwatchPage extends StatefulWidget {
  const IrriwatchPage({super.key});

  @override
  State<IrriwatchPage> createState() => _IrriwatchPageState();
}

class _IrriwatchPageState extends State<IrriwatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Parámetros de IrriWatch',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.input,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Parámetros de Entrada'),
            subtitle: const Text('Valores modificables y por Default'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ItemsInputScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.output,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Parámetros de salida'),
            subtitle: const Text('Glosario de resultados en IrriWatch'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ItemsOutputScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.book,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Parámetros Complementarios'),
            subtitle: const Text('Definiciones importantes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ItemsEmiOutScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

//  Su valor se utiliza para el cálculo de la porosidad total del suelo, inferir procesos de compactación del suelo, calcular la masa de un suelo en un área con una profundidad determinada y el cálculo del carbono capturado por un suelo

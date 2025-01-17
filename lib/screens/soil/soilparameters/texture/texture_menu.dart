import 'package:ecosuelolab/models/constants.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/bouyoucos.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/texture.dart';
import 'package:flutter/material.dart';

class TextureMenu extends StatefulWidget {
  const TextureMenu({super.key});

  @override
  State<TextureMenu> createState() => _TextureMenuState();
}

class _TextureMenuState extends State<TextureMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Ecosuelolab 🌱',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown[300],
                child: Icon(
                  Icons.agriculture,
                  color: Colors.brown[900],
                ),
              ),
              title: const Text('Método al Tácto'),
              subtitle: const Text('Calculo para campo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextureScreen()),
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
              title: const Text('Método del hidrómetro de Bouyoucos'),
              subtitle: const Text('Calculo para laboratorio'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bouyoucos()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

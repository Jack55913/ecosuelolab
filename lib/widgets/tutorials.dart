// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget _buildItem(String textTitle, String textsubtitle, String url) {
  return ListTile(
    hoverColor: Colors.brown[300],
    splashColor: Colors.brown[300],
    onTap: () async {
      launchUrl(Uri.parse(url));
    },
    title: Text(textTitle,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'poppins',
          fontSize: 15,
        )),
    subtitle: Text(
      textsubtitle,
      style: const TextStyle(color: Colors.white70),
    ),
    trailing: const Icon(
      Icons.open_in_new,
      color: Colors.white,
    ),
  );
}

class TutorialWidget extends StatelessWidget {
  const TutorialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Eco-Tutoriales',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'FredokaOne',
              fontSize: 24,
              letterSpacing: 2,
            ),
          ),
        ),
        const SizedBox(height: 10),
        _buildItem('Bienvenida', 'Sé parte de EcosueloLab con Irriwatch',
            'https://fb.watch/rWvSWd16SB/'),
        const Divider(
          thickness: 1,
        ),
        _buildItem(
            'Calibración',
            'Paso a paso, del procedimientos del proceso de calibración',
            'https://fb.watch/rWvSWd16SB/'),
        const Divider(
          thickness: 1,
        ),
        _buildItem('Irriwatch', 'Guía Rápida para usar Irriwatch',
            'https://fb.watch/rWvSWd16SB/'),
        const Divider(
          thickness: 1,
        ),
        _buildItem('Datos de Irriwatch', 'Interpreta los datos como un pro',
            'https://fb.watch/rWvSWd16SB/'),
        const Divider(
          thickness: 1,
        ),
        _buildItem('Mapa de Irriwatch', 'Monitorea tus cultivos en 30 segundos',
            'https://fb.watch/rWvSWd16SB/'),
      ],
    );
  }
}

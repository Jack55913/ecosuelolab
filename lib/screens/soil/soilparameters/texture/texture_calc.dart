import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TexturaSueloScreen extends StatefulWidget {
  const TexturaSueloScreen({super.key});

  @override
  _TexturaSueloScreenState createState() => _TexturaSueloScreenState();
}

class _TexturaSueloScreenState extends State<TexturaSueloScreen> {
  final TextEditingController _arenaController = TextEditingController();
  final TextEditingController _limoController = TextEditingController();
  final TextEditingController _arcillaController = TextEditingController();
  String _resultado = '';

  void _determinarTextura() {
    double? arena = double.tryParse(_arenaController.text);
    double? limo = double.tryParse(_limoController.text);
    double? arcilla = double.tryParse(_arcillaController.text);

    // Calcular la tercera entrada si hay dos valores proporcionados
    if (arena != null && limo != null) {
      arcilla = 100 - (arena + limo);
    } else if (arena != null && arcilla != null) {
      limo = 100 - (arena + arcilla);
    } else if (limo != null && arcilla != null) {
      arena = 100 - (limo + arcilla);
    }

    // Verificar que la suma sea 100%
    if (arena == null ||
        limo == null ||
        arcilla == null ||
        arena + limo + arcilla != 100) {
      setState(() {
        _resultado = 'Error: La suma de los porcentajes debe ser 100%.';
      });
      return;
    }

    // Determinar la textura del suelo
    String textura = _clasificarTextura(arena, limo, arcilla);

    setState(() {
      _resultado = 'Textura del suelo: $textura\n'
          'Arena: ${arena?.toStringAsFixed(1)}%\n'
          'Arcilla: ${arcilla?.toStringAsFixed(1)}%\n'
          'Limo: ${limo?.toStringAsFixed(1)}%';
    });
  }

  String _clasificarTextura(double arena, double limo, double arcilla) {
    if (arena <= 45 && limo <= 40 && arcilla >= 40) {
      return "Arcilla";
    } else if (arena >= 45 &&
        arena <= 65 &&
        limo <= 20 &&
        arcilla >= 35 &&
        arcilla <= 55) {
      return "Arcilla arenosa";
    } else if (arena <= 20 &&
        limo >= 40 &&
        limo <= 60 &&
        arcilla >= 40 &&
        arcilla <= 60) {
      return "Arcilla limosa";
    } else if (arena >= 45 &&
        arena <= 80 &&
        limo <= 28 &&
        arcilla >= 20 &&
        arcilla <= 35) {
      return "Franco arcillo arenoso";
    } else if (arena >= 20 &&
        arena <= 45 &&
        limo >= 15 &&
        limo <= 53 &&
        arcilla >= 27 &&
        arcilla <= 40) {
      return "Franco arcilloso";
    } else if (arena <= 20 &&
        limo >= 40 &&
        limo <= 73 &&
        arcilla >= 27 &&
        arcilla <= 40) {
      return "Franco arcillo limoso";
    } else if (arena >= 43 && arena <= 85 && limo <= 50 && arcilla <= 20) {
      return "Franco arenoso";
    } else if (arena >= 23 &&
        arena <= 52 &&
        limo >= 28 &&
        limo <= 50 &&
        arcilla >= 7 &&
        arcilla <= 27) {
      return "Franco";
    } else if (arena <= 50 && limo >= 50 && limo <= 88 && arcilla <= 27) {
      return "Franco limoso";
    } else if (arena <= 20 && limo >= 80 && arcilla <= 12) {
      return "Limo";
    } else if (arena >= 70 && arena <= 90 && limo <= 30 && arcilla <= 15) {
      return "Arena franca";
    } else if (arena >= 85 && limo <= 15 && arcilla <= 10) {
      return "Arena";
    } else {
      return "No disponible";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora de Textura del Suelo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _arenaController,
                decoration: const InputDecoration(
                  labelText: 'Porcentaje de Arena (%)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _arcillaController,
                decoration: const InputDecoration(
                  labelText: 'Porcentaje de Arcilla (%)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _limoController,
                decoration: const InputDecoration(
                  labelText: 'Porcentaje de Limo (%)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _determinarTextura,
                child: const Text('Determinar Textura'),
              ),
              const SizedBox(height: 20),
              Text(
                _resultado,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Triángulo de Texturas',
                style: TextStyle(fontSize: 20),
              ),
              SvgPicture.asset(
                'assets/img/texture.svg', // Ruta de la imagen SVG
                // height: 150, // Altura opcional
                // width: 150, // Ancho opcional
                // color: Colors.blue, // Color opcional
              ),
            ],
          ),
        ),
      ),
    );
  }
}

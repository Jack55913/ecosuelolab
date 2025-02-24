import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class DensidadAparenteScreen extends StatefulWidget {
  const DensidadAparenteScreen({super.key});

  @override
  _DensidadAparenteScreenState createState() => _DensidadAparenteScreenState();
}

class _DensidadAparenteScreenState extends State<DensidadAparenteScreen> {
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _volumenController = TextEditingController();
  String _resultado = '';

  void _calcularDensidad() {
    double peso = double.tryParse(_pesoController.text) ?? 0;
    double volumen = double.tryParse(_volumenController.text) ?? 0;

    if (peso > 0 && volumen > 0) {
      double densidad = peso / volumen;
      setState(() {
        _resultado = 'Densidad Aparente: ${densidad.toStringAsFixed(2)} g/cm³';
      });
    } else {
      setState(() {
        _resultado = 'Error: Ingresa valores válidos';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Densidad Aparente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Math.tex(r'D_a = \frac{P_{ss}}{V_t}',
                textStyle: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            TextField(
              controller: _pesoController,
              decoration: const InputDecoration(
                labelText: 'Peso del suelo seco (g)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _volumenController,
              decoration: const InputDecoration(
                labelText: 'Volumen total (cm³)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularDensidad,
              child: const Text('Calcular Densidad'),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/bouyoucos.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/texture.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/texture/texture_calc.dart';

class TextureMenu extends StatefulWidget {
  const TextureMenu({super.key});

  @override
  State<TextureMenu> createState() => _TextureMenuState();
}

class _TextureMenuState extends State<TextureMenu> {
  // Constantes para colores y estilos
  static const Color primaryColor = Colors.brown; 
  static const TextStyle titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle tableHeaderStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );
  static const EdgeInsets tableCellPadding = EdgeInsets.all(8.0);

  // Función para construir las filas de la tabla
  List<TableRow> _buildTableRows() {
    return [
      _buildTableRow('Arena', 'A', 'Franco arcillo arenoso', 'FArA'),
      _buildTableRow('Arena francosa', 'AF', 'Franco arcilloso', 'Far'),
      _buildTableRow('Franco arenoso', 'FA', 'Franco arcillo limoso', 'FARL'),
      _buildTableRow('Franco', 'F', 'Arcillo arenoso', 'ArA'),
      _buildTableRow('Franco limoso', 'FL', 'Arcillo limoso', 'ArL'),
      _buildTableRow('Limoso', 'L', 'Arcilla', 'Ar'),
    ];
  }

  // Función para construir una fila de la tabla
  TableRow _buildTableRow(String claseTextural, String codigo,
      String claseTextura, String abreviatura) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: tableCellPadding,
            child: Text(claseTextural),
          ),
        ),
        TableCell(
          child: Padding(
            padding: tableCellPadding,
            child: Text(codigo),
          ),
        ),
        TableCell(
          child: Padding(
            padding: tableCellPadding,
            child: Text(claseTextura),
          ),
        ),
        TableCell(
          child: Padding(
            padding: tableCellPadding,
            child: Text(abreviatura),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Textura',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Prácticas',
                style: titleStyle,
              ),
              const SizedBox(height: 20),
              _buildListTile(
                icon: Icons.agriculture,
                title: 'Método al Tácto',
                subtitle: 'Calculo para campo',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextureScreen()),
                  );
                },
              ),
              _buildListTile(
                icon: Icons.science,
                title: 'Método del hidrómetro de Bouyoucos',
                subtitle: 'Calculo para laboratorio',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Bouyoucos()),
                  );
                },
              ),
              _buildListTile(
                icon: Icons.calculate,
                title: 'Calculadora de textura',
                subtitle: 'con los porcentajes arena, limo y arcilla',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TexturaSueloScreen()),
                  );
                },
              ),
              const SizedBox(height: 25),
              const Text(
                'Definición',
                style: titleStyle,
              ),
              const SizedBox(height: 20),
              const Text(
                'La textura es la proporción relativa por tamaños de partículas de arena, limo y arcilla. Las cuales al combinarse generan las clases texturales.',
              ),
              const SizedBox(height: 25),
              const Text(
                'Clases Texturales del Suelo',
                style: titleStyle,
              ),
              const SizedBox(height: 20),
              Table(
                border: TableBorder.all(color: Colors.black),
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(2),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.brown[300],
                    ),
                    children: const [
                      TableCell(
                        child: Padding(
                          padding: tableCellPadding,
                          child: Text(
                            'Clase Textural',
                            style: tableHeaderStyle,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: tableCellPadding,
                          child: Text(
                            'Código',
                            style: tableHeaderStyle,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: tableCellPadding,
                          child: Text(
                            'Clase de Textura',
                            style: tableHeaderStyle,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: tableCellPadding,
                          child: Text(
                            'Abreviaturas',
                            style: tableHeaderStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ..._buildTableRows(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Función para construir un ListTile
  ListTile _buildListTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.brown[300],
        child: Icon(
          icon,
          color: Colors.brown[900],
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}

// https://www.fao.org/fishery/static/FAO_Training/FAO_Training/General/x6706s/x6706s06.htm#:~:text=La%20textura%20indica%20el%20contenido,el%20suelo%20y%20lo%20atraviesa.
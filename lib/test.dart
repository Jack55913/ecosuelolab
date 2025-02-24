import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({super.key});

  @override
  _ItemsListScreenState createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  List<dynamic> items = [];
  // Reemplaza 'XXXXX' por el ID correcto obtenido al desplegar tu Apps Script.
  final String apiUrl =
      "https://script.google.com/macros/s/AKfycbxCgzKa0QWF8J3UYj0JKmOkHIe5mg1QI4vOX3ZkBfidiaw6zmITUZlvLvBy9h-hyqO6Uw/exec";

  Future<void> fetchItems() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        setState(() {
          items = json.decode(response.body);
        });
      } else {
        throw Exception('Error al cargar los datos');
      }
    } catch (e) {
      print(e);
      // Manejo de errores, por ejemplo, mostrar un mensaje al usuario.
    }
  }

  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Elementos')),
      body: items.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: Text(items[index]['NAME'] ?? 'Sin nombre'),
                  onTap: () => showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text(items[index]['NAME'] ?? 'Sin nombre'),
                      content:
                          Text(items[index]['DEFINITION'] ?? 'Sin definición'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cerrar'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

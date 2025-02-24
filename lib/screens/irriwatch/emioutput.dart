import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ItemsEmiOutScreen extends StatefulWidget {
  const ItemsEmiOutScreen({super.key});

  @override
  _ItemsEmiOutScreenState createState() => _ItemsEmiOutScreenState();
}

class _ItemsEmiOutScreenState extends State<ItemsEmiOutScreen> {
  List<dynamic> items = [];
  List<dynamic> filteredItems = [];
  final String apiUrl =
      "https://script.google.com/macros/s/AKfycbxCgzKa0QWF8J3UYj0JKmOkHIe5mg1QI4vOX3ZkBfidiaw6zmITUZlvLvBy9h-hyqO6Uw/exec";
  String _searchQuery = '';

  Future<void> fetchItems() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final List<dynamic> fetchedItems = json.decode(response.body);
        setState(() {
          items = fetchedItems;
          filteredItems = fetchedItems;
        });
      } else {
        throw Exception('Error al cargar los datos');
      }
    } catch (e) {
      print(e);
      // Manejo de errores, por ejemplo, mostrar un mensaje al usuario.
    }
  }

  void _filterItems(String query) {
    List<dynamic> tempItems = [];
    if (query.isNotEmpty) {
      tempItems = items.where((item) {
        final name = item['NAME']?.toString().toLowerCase() ?? '';
        return name.contains(query.toLowerCase());
      }).toList();
    } else {
      tempItems = items;
    }
    setState(() {
      _searchQuery = query;
      filteredItems = tempItems;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Parámetros complementarios',
        style: TextStyle(color: Colors.white),
      )),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Buscar',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => _filterItems(value),
            ),
          ),
          // Lista de elementos
          Expanded(
            child: filteredItems.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.info_outline),
                        title:
                            Text(filteredItems[index]['NAME'] ?? 'Sin nombre'),
                        onTap: () => showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text(
                                filteredItems[index]['NAME'] ?? 'Sin nombre'),
                            content: Text(filteredItems[index]['DEFINITION'] ??
                                'Sin definición'),
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
          ),
        ],
      ),
    );
  }
}

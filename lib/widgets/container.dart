import 'package:flutter/material.dart';

class DarkContainer {
  final StatelessWidget? fill;

  DarkContainer({
    required this.fill,
  });
}

class DarkContainerWidget extends StatelessWidget {
  const DarkContainerWidget({
    required this.data,
    super.key,
  });
  final DarkContainer data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: data.fill,
              ),
            ],
          ),
        ),
        const Divider(
          height: 20,
          thickness: 1,
        ),
      ],
    );
  }
}

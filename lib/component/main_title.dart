import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String name;
  const MainTitle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
        ),
        child: Text(
          name, //enter your information
          style: const TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}

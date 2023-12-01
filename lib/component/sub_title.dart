import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String name;
  const SubTitle({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 80,
        bottom: 20,
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/screen/recommendation_selection_screen.dart';

class BackNextButtons extends StatelessWidget {
  final Function next;
  const BackNextButtons({
    required this.next,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back')),
          const SizedBox(
            width: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(next);
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/screen/selection_based_home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => const SelectionBasedHomeScreen());
              },
              child: const Text('Selection Based Item Recommendation'),
            ),
            const SizedBox(
              width: 30.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('BodySize Based Couple Item Recommendation'),
            ),
          ],
        ),
      ),
    );
  }
}

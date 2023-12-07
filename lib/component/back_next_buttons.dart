import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/screen/recommendation_selection_screen.dart';

class BackNextButtons extends StatelessWidget {
  final VoidCallback onNextPressed;
  //final Function next;
  const BackNextButtons({
    required this.onNextPressed,
    //required this.next,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 30.0, left: 5.0),
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
            onPressed: onNextPressed,
            //() {
            //   Get.to(next);
            // },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}

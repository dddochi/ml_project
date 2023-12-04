import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/back_next_buttons.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/screen/recommendation_outcome_screen.dart';

class RecommendationSelectionScreen extends StatelessWidget {
  const RecommendationSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
        ),
        child: SizedBox(
          width: Get.width,
          child: Column(
            children: [
              const MainTitle(
                name: 'What Item Do You Want To Be Recommended?',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Row(
                  children: [
                    _Card(
                      name: 'Top',
                      imagePath: 'asset/clothes/top_representation.jpeg',
                    ),
                    _Card(
                      name: 'Bottom',
                      imagePath: 'asset/clothes/bottom_representation.jpeg',
                    ),
                    _Card(
                      name: 'Dress',
                      imagePath: 'asset/clothes/suit_representation.jpeg',
                    ),
                    _Card(
                      name: 'Outer',
                      imagePath: 'asset/clothes/outer_representation.jpeg',
                    ),
                  ],
                ),
              ),
              BackNextButtons(
                next: () => const RecommendationOutcomeScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String name;
  final String imagePath;
  const _Card({
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        width: 320,
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 45.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
            Image.asset(
              imagePath,
              width: 300,
              height: 400,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

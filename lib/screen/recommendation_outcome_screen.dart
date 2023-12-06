import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/back_next_buttons.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/component/sub_title.dart';
import 'package:ml_project/model/recommendation_model.dart';

class RecommendationOutcomeScreen extends StatelessWidget {
  const RecommendationOutcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RecommendationModel>? recommendationList = Get.arguments as List<RecommendationModel>?;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
        ),
        child: Column(
          children: [
            const MainTitle(
              name: 'Recommendation',
            ),
            const SubTitle(name: 'Top'),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

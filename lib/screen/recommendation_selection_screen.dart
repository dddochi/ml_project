import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/back_next_buttons.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/controller/selection_based_home_screen_controller.dart';
import 'package:ml_project/screen/bottom_selection_screen.dart';
import 'package:ml_project/screen/dress_selection_screen.dart';
import 'package:ml_project/screen/look_selection_screen.dart';
import 'package:ml_project/screen/outer_selection_screen.dart';
import 'package:ml_project/screen/recommendation_outcome_screen.dart';
import 'package:ml_project/screen/selection_based_home_screen.dart';
import 'package:ml_project/screen/top_selection_screen.dart';

class RecommendationSelectionScreen extends StatefulWidget {
  const RecommendationSelectionScreen({super.key});

  @override
  State<RecommendationSelectionScreen> createState() => _RecommendationSelectionScreenState();
}

class _RecommendationSelectionScreenState extends State<RecommendationSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    SelectionBasedHomeScreenController controller = Get.put(SelectionBasedHomeScreenController());
    //List<String> recommendationList = [];
    String? recommendationType;
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Row(
                  children: [
                    _Card(
                      name: 'Top',
                      imagePath: 'asset/clothes/top_representation.jpeg',
                      recommendationType: recommendationType,
                      onTapPressed: () {
                        setState(() {
                          controller.recommendationType = 'top';
                          print('Final selection list = $recommendationType');
                          Get.to(const TopSelectionScreen());
                        });
                      },
                    ),
                    _Card(
                      name: 'Bottom',
                      imagePath: 'asset/clothes/bottom_representation.jpeg',
                      recommendationType: recommendationType,
                      onTapPressed: () {
                        setState(() {
                          controller.recommendationType = 'bottom';
                          print('Final selection list = $recommendationType');
                          Get.to(const BottomSelectionScreen());
                        });
                      },
                    ),
                    _Card(
                      name: 'Dress',
                      imagePath: 'asset/clothes/suit_representation.jpeg',
                      recommendationType: recommendationType,
                      onTapPressed: () {
                        setState(() {
                          controller.recommendationType = 'dress';
                          print('Final selection list = $recommendationType');
                          Get.to(const DressSelectionScreen());
                        });
                      },
                    ),
                    _Card(
                      name: 'Outer',
                      imagePath: 'asset/clothes/outer_representation.jpeg',
                      recommendationType: recommendationType,
                      onTapPressed: () {
                        setState(() {
                          controller.recommendationType = 'outer';
                          print('Final selection list = $recommendationType');
                          Get.to(const OuterSelectionScreen());
                        });
                      },
                    ),
                  ],
                ),
              ),
              // BackNextButtons(
              //   onNextPressed: () {
              //     // Get.to(() => const LookSelectionScreen());

              //     // //api request하기
              //     // controller.getSelectionBasedRecommendation();
              //   },
              //   //next: () => const RecommendationOutcomeScreen(),
              // ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Card extends StatefulWidget {
  final String name;
  final String imagePath;
  final String? recommendationType;
  final GestureTapCallback? onTapPressed;

  const _Card({
    required this.name,
    required this.imagePath,
    required this.recommendationType,
    required this.onTapPressed,
  });

  @override
  State<_Card> createState() => _CardState();
}

class _CardState extends State<_Card> {
  bool isClicked = false;
  String? recommendationType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: GestureDetector(
        onTap: widget.onTapPressed,
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
                  widget.name,
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Image.asset(
                widget.imagePath,
                width: 300,
                height: 400,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/back_next_buttons.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/controller/selection_based_home_screen_controller.dart';
import 'package:ml_project/screen/recommendation_outcome_screen.dart';
import 'package:ml_project/screen/selection_based_home_screen.dart';

class RecommendationSelectionScreen extends StatefulWidget {
  const RecommendationSelectionScreen({super.key});

  @override
  State<RecommendationSelectionScreen> createState() => _RecommendationSelectionScreenState();
}

class _RecommendationSelectionScreenState extends State<RecommendationSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    SelectionBasedHomeScreenController controller = Get.put(SelectionBasedHomeScreenController());
    List<String> recommendationList = [];
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
                padding: const EdgeInsets.symmetric(vertical: 100.0),
                child: Row(
                  children: [
                    _Card(
                      name: 'Top',
                      imagePath: 'asset/clothes/top_representation.jpeg',
                      recommendationList: recommendationList,
                    ),
                    _Card(
                      name: 'Bottom',
                      imagePath: 'asset/clothes/bottom_representation.jpeg',
                      recommendationList: recommendationList,
                    ),
                    _Card(
                      name: 'Dress',
                      imagePath: 'asset/clothes/suit_representation.jpeg',
                      recommendationList: recommendationList,
                    ),
                    _Card(
                      name: 'Outer',
                      imagePath: 'asset/clothes/outer_representation.jpeg',
                      recommendationList: recommendationList,
                    ),
                  ],
                ),
              ),
              BackNextButtons(
                onNextPressed: () {
                  Get.to(() => const RecommendationOutcomeScreen());
                  print('Final selection list = $recommendationList');
                  controller.recommendationList = recommendationList;
                  //api request하기
                },
                //next: () => const RecommendationOutcomeScreen(),
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
  final List<String> recommendationList;
  const _Card({
    required this.name,
    required this.imagePath,
    required this.recommendationList,
  });

  @override
  State<_Card> createState() => _CardState();
}

class _CardState extends State<_Card> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isClicked = !isClicked;
                widget.recommendationList.add(widget.name.toLowerCase());
                print(widget.recommendationList);
              });
            },
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
          if (isClicked)
            GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                  //widget.selectionList가 null일 때 remove가 발생가능? no..!
                  widget.recommendationList.remove(widget.name.toLowerCase());
                  print(widget.recommendationList);
                });
              },
              child: Container(
                width: 320,
                height: 600,
                color: Colors.blue.withOpacity(0.5),
              ),
            ),
        ],
      ),
    );
  }
}

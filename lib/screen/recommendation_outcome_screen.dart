import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/back_next_buttons.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/component/sub_title.dart';
import 'package:ml_project/const/clothes_name_list.dart';
import 'package:ml_project/model/display_model.dart';
import 'package:ml_project/model/recommendation_model.dart';

class RecommendationOutcomeScreen extends StatelessWidget {
  const RecommendationOutcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<RecommendationModel> recommendationList = Get.arguments as List<RecommendationModel>? ?? [];

    print('outcomepage---------');
    print(recommendationList);
    List<DisplayModel> displayList1 = [];
    List<DisplayModel> displayList2 = [];

    if (recommendationList.length <= 6) {
      displayList1 = recommendationList
          .map(
            (e) => getDisplayModel(e.categoryName, e.itemId),
          )
          .toList();
    }

    if (recommendationList.length > 6) {
      List<RecommendationModel> sublist1 = recommendationList.sublist(0, 6);
      List<RecommendationModel> sublist2 = recommendationList.sublist(6);

      displayList1 = sublist1
          .map(
            (e) => getDisplayModel(e.categoryName, e.itemId),
          )
          .toList();

      displayList2 = sublist2
          .map(
            (e) => getDisplayModel(e.categoryName, e.itemId),
          )
          .toList();
    }
    print('-------reList----------');
    print(recommendationList);

    // print('getFakeName');
    // getDisplayModel('ballgown', "1501483");

//     List<RecommendationModel> firstSublist = [];
//     List<RecommendationModel> secondSublist = [];

// // Check if recommendationList has at least 6 elements
//     if (recommendationList!.length >= 6) {
//       firstSublist = recommendationList.sublist(0, 6);
//       secondSublist = recommendationList.sublist(6);
//     } else {
//       // Handle the case when there are fewer than 6 elements
//       firstSublist = recommendationList;
//     }
    return Scaffold(
      body: Column(
        children: [
          const MainTitle(
            name: 'Recommendation',
          ),
          Row(
            children: displayList1
                .map(
                  (e) => ColumnForACloth(
                    itemId: e.itemId,
                    fakeName: e.fakeName,
                    imagePath: e.imagePath,
                  ),
                )
                .toList(),
          ),
          if (displayList2.isNotEmpty)
            Row(
              children: displayList2
                  .map(
                    (e) => ColumnForACloth(
                      itemId: e.itemId,
                      fakeName: e.fakeName,
                      imagePath: e.imagePath,
                    ),
                  )
                  .toList(),
            ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }

  DisplayModel getDisplayModel(categoryListName, itemId) {
    String? fakeName;
    String? imagePath;

    for (int i = 0; i < clothesNameList.length; i++) {
      List<Map<String, dynamic>> list = clothesNameList[i];

      //print('${list[0]['type']}');

      if (list[0]['type'] == categoryListName) {
        for (int j = 0; j < list.length; j++) {
          if (list[j]['item-id'] == itemId) {
            // print('${list[j]['fake-name']}');
            // print('${list[j]['image-path']}');
            fakeName = list[j]['fake-name'];
            imagePath = list[j]['image-path'];
            break;
          }
        }
      }
    }
    fakeName ??= 'null';
    imagePath ??= 'asset/clothes/ballgown/4.jpeg';

    return DisplayModel(itemId: itemId, fakeName: fakeName, imagePath: imagePath);
  }
}

class ColumnForACloth extends StatelessWidget {
  //final CLOTHES cloth;
  final String itemId;
  final String fakeName;
  final String imagePath;

  const ColumnForACloth({
    super.key,
    //required this.cloth,

    required this.itemId,
    required this.fakeName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 200,
            height: 280,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
              left: 8.0,
              top: 8.0,
              bottom: 25.0,
            ),
            child: SizedBox(
              width: 200,
              child: Text(
                capitalize(fakeName),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String capitalize(String string) {
    return "${string[0].toUpperCase()}${string.substring(1)}";
  }
}

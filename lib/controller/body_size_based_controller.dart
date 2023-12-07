import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/model/recommendation_model.dart';

class BodySizeBasedController extends GetxController {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController ageTextController = TextEditingController();
  TextEditingController weightTextController = TextEditingController();
  TextEditingController heightTextController = TextEditingController();
  TextEditingController bodyTypeTextController = TextEditingController(); //category
  TextEditingController bustSizeTextController = TextEditingController(); //category

  Dio dio = Dio();

  Future<List<RecommendationModel>> getBodySizeBasedRecommendation() async {
    print('-------body size based controller----------');
    print('name = ${nameTextController.value.text}');
    print('age: ${ageTextController.value.text}');
    print('weight: ${weightTextController.value.text}');
    print('height: ${heightTextController.value.text}');
    print('body_type: ${bodyTypeTextController.value.text}');
    print('bust_size: ${bustSizeTextController.value.text}');
    // print('selection_list $selectionList'); //item-id
    // print('recommendation_list $recommendationList');

    // dio.get("https://13.209.203.131:8080/body_size_based", data: {
    //   'name': nameTextController.value.text,
    //   'age': int.parse(ageTextController.value.text),
    //   'weight': double.parse(weightTextController.value.text),
    //   'height': double.parse(heightTextController.value.text),
    //   'body_type': bodyType,
    //   'bust_size': bustSize,

    // });

    final list = [
      {
        'category': 1,
        'item_id': "2660685",
      },
      {
        'category': 1,
        'item_id': "2641483",
      }
    ];

    print(list);
    return list.map((e) => RecommendationModel.fromJson(json: e)).toList();
  }
}

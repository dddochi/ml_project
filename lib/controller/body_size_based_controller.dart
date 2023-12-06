import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodySizeBasedController extends GetxController {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController ageTextController = TextEditingController();
  TextEditingController weightTextController = TextEditingController();
  TextEditingController heightTextController = TextEditingController();
  TextEditingController bodyTypeTextController = TextEditingController(); //category
  TextEditingController bustSizeTextController = TextEditingController(); //category
  // String? bodyType;
  // String? bustSize;
  List<String>? selectionList;
  List<String>? recommendationList;

  Dio dio = Dio();

  Future<String> getSelectionBasedRecommendation() async {
    print('name = ${nameTextController.value.text}');
    print('age: ${ageTextController.value.text}');
    print('weight: ${weightTextController.value.text}');
    print('height: ${heightTextController.value.text}');
    print('body_type: ${bodyTypeTextController.value.text}');
    print('bust_size: ${bustSizeTextController.value.text}');
    print('selection_list $selectionList'); //item-id
    print('recommendation_list $recommendationList');

    // dio.get("https://서버주소", data: {
    //   'name': nameTextController.value.text,
    //   'age': int.parse(ageTextController.value.text),
    //   'weight': double.parse(weightTextController.value.text),
    //   'height': double.parse(heightTextController.value.text),
    //   'body_type': bodyType,
    //   'bust_size': bustSize,
    //   'selection_list': selectionList,
    //   'recommendation_list': recommendationList,
    // });

    return 'String';
  }
}

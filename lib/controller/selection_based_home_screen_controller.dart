import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/model/recommendation_model.dart';

class SelectionBasedHomeScreenController extends GetxController {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController ageTextController = TextEditingController();
  TextEditingController weightTextController = TextEditingController();
  TextEditingController heightTextController = TextEditingController();
  TextEditingController bodyTypeTextController = TextEditingController(); //category
  TextEditingController bustSizeTextController = TextEditingController(); //category
  // String? bodyType;
  // String? bustSize;
  List<String>? selectionList;
  String? recommendationType;

  late Dio dio; // Declare it as late, to be initialized later in the constructor.

  SelectionBasedHomeScreenController() {
    BaseOptions options = BaseOptions(
      baseUrl: "http://13.209.203.131:8001/select_based",
      connectTimeout: const Duration(milliseconds: 50000),
      receiveTimeout: const Duration(milliseconds: 50000),
    );
    dio = Dio(options);
  }

  // Dio dio = Dio();

  Future<List<RecommendationModel>> getSelectionBasedRecommendation() async {
    print('name = ${nameTextController.value.text}');
    print('age: ${ageTextController.value.text}');
    print('weight: ${weightTextController.value.text}');
    print('height: ${heightTextController.value.text}');
    print('body_type: ${bodyTypeTextController.value.text}');
    print('bust_size: ${bustSizeTextController.value.text}');
    print('selection_list $selectionList'); //item-id
    print('recommendation_type $recommendationType'); // string

    final response = dio.get("http://13.209.203.131:8001/selection_based", queryParameters: {
      'name': nameTextController.value.text,
      'age': int.parse(ageTextController.value.text),
      'weight': double.parse(weightTextController.value.text),
      'height': double.parse(heightTextController.value.text),
      'body_type': bodyTypeTextController.value.text ?? 'hourglass',
      'bust_size': bustSizeTextController.value.text ?? '34b',
      'selection_list': selectionList,
      'recommendation_type': recommendationType,
    });
    print('-----SelectionBased Response----------');
    print('response from server = $response');

    final list = [
      {
        'category': 0,
        'item_id': "1501483_28",
      },
      {
        'category': 0,
        'item_id': "1501483_42",
      }
    ];
    print(list);
    return list.map((e) => RecommendationModel.fromJson(json: e)).toList();

    // return [
    //   RecommendationModel.fromJson(json: json1),
    //   RecommendationModel.fromJson(json: json2),
    // ];
  }
}

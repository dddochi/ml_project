import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/model/recommendation_model.dart';
import 'package:http/http.dart' as http;

class BodySizeBasedController extends GetxController {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController ageTextController = TextEditingController();
  TextEditingController weightTextController = TextEditingController();
  TextEditingController heightTextController = TextEditingController();
  TextEditingController bodyTypeTextController = TextEditingController(); //category
  TextEditingController bustSizeTextController = TextEditingController(); //category

  late Dio dio; // Declare it as late, to be initialized later in the constructor.

  BodySizeBasedController() {
    BaseOptions options = BaseOptions(
      baseUrl: "http://13.209.203.131:8001/body_size_based",
      connectTimeout: const Duration(milliseconds: 500000),
      receiveTimeout: const Duration(milliseconds: 500000),
      followRedirects: false, // 리다이렉션을 수동으로 처리
      maxRedirects: 5, // 최대 리다이렉션 횟수
    );
    dio = Dio(options);
  }
  //Dio dio = Dio();

  Future<List<RecommendationModel>> getBodySizeBasedRecommendation() async {
    print('-------body size based controller----------');
    print('name = ${nameTextController.value.text}');
    print('age: ${ageTextController.value.text}');
    print('weight: ${weightTextController.value.text}');
    print('height: ${heightTextController.value.text}');
    print('body_type: ${bodyTypeTextController.value.text}');
    print('bust_size: ${bustSizeTextController.value.text}');
    //8080 - 서버 연결 성공 but 302에러
    //8001 - timeout - 서버 연결 x
    print('-----BodySizeBased Response----------');
    final response = dio.post(
      "http://13.209.203.131:8000/body_size_based",
      data: {
        'name': nameTextController.value.text,
        'age': int.parse(ageTextController.value.text),
        'weight': double.parse(weightTextController.value.text),
        'height': double.parse(heightTextController.value.text),
        'body_type': bodyTypeTextController.value.text ?? 'hourglass',
        'bust_size': bustSizeTextController.value.text ?? '34b',
      },
    );

    print(response);

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
  }
}

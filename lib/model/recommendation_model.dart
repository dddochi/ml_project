import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/const/clothes_list.dart';

class RecommendationModel {
  final String categoryName;
  final String itemId;

  RecommendationModel({
    required this.categoryName,
    required this.itemId,
  });

  RecommendationModel.fromJson({required Map<String, dynamic> json})
      : categoryName = getCategoryStringName(json['category']),
        itemId = json['item_id'];

  static String getCategoryStringName(categoryNumber) {
    CLOTHES clothes = CLOTHES.values.firstWhere((element) => element.index == categoryNumber);
    return clothes.name;
  }
}

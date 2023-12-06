import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/const/clothes_list.dart';

class RecommendationModel {
  final String categoryListName;
  final String itemId;

  RecommendationModel({
    required this.categoryListName,
    required this.itemId,
  });

  RecommendationModel.fromJson({required Map<String, dynamic> json})
      : categoryListName = getCategoryListName(getCategoryStringName(json['category'])),
        itemId = json['item_id'];

  static String getCategoryStringName(categoryNumber) {
    CLOTHES clothes = CLOTHES.values.firstWhere((element) => element.index == categoryNumber);
    return clothes.name;
  }

  static String getCategoryListName(categoryName) {
    String categoryListName = '${categoryName}_list';
    return categoryListName;
  }
}

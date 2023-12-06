import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/const/clothes_list.dart';

class RecommendationModel {
  final String categoryList;
  final String itemId;

  RecommendationModel({
    required this.categoryList,
    required this.itemId,
  });

  RecommendationModel(Map<String, dynamic> json)
      : categoryList = getCategoryListName(getCategoryStringName(json['category'])),
        itemId = json['item_id'];

  static String getCategoryStringName(categoryNumber) {
    String categoryName = CLOTHES.values.firstWhere((element) => element == categoryNumber).toString();
    return categoryName;
  }

  static String getCategoryListName(categoryName) {
    String categoryListName = '${categoryName}_list';
    return categoryListName;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/screen/main_screen.dart';
import 'package:ml_project/screen/selection_based_home_screen.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

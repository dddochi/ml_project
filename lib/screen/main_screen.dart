import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/const/clothes_list.dart';
import 'package:ml_project/model/recommendation_model.dart';
import 'package:ml_project/screen/body_size_based_home_screen.dart';
import 'package:ml_project/screen/selection_based_home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 30.0,
              bottom: 40.0,
            ),
            child: Text(
              'Rent The Runway',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 50.0),
            child: Text(
              'Choose Recommendation',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const SelectionBasedHomeScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Selection Based Item Recommendation',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const BodySizeBasedHomeScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'BodySize Based Couple Item Recommendation',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

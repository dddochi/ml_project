import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/component/sub_title.dart';

import 'look_selection_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
        ),
        child: SizedBox(
          width: Get.width,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainTitle(
                name: 'Who Are You?',
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SubTitle(name: 'Member Information'),
                      _RowForOneInfo(
                        name: 'Name',
                      ),
                      _RowForOneInfo(
                        name: 'Age',
                      ),
                      SubTitle(name: 'Body Information'),
                      _RowForOneInfo(
                        name: 'Weight',
                      ),
                      _RowForOneInfo(
                        name: 'Height',
                      ),
                      _BodyTypeDropDownButton(
                        name: 'Body Type',
                      ),
                      _BustSizeDropDownButton(
                        name: 'Bust Size',
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: 400.0,
                  //     top: 200,
                  //   ),
                  //   child: Image.asset(
                  //     'asset/clothes/cover1.png',
                  //     width: 600,
                  //   ),
                  // ),
                ],
              ),
              _BottomButton()
            ],
          ),
        ),
      ),
    );
  }
}

class _RowForOneInfo extends StatelessWidget {
  final String name;
  const _RowForOneInfo({
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Row(
        children: [
          Text(name),
          const SizedBox(
            width: 10.0,
          ),
          const SizedBox(
            width: 100,
            child: TextField(),
          ),
        ],
      ),
    );
  }
}

class _BodyTypeDropDownButton extends StatefulWidget {
  final String name;
  // final List<String> list;

  const _BodyTypeDropDownButton({
    required this.name,
  });

  @override
  State<_BodyTypeDropDownButton> createState() => _BodyTypeDropDownButtonState();
}

class _BodyTypeDropDownButtonState extends State<_BodyTypeDropDownButton> {
  final list = [
    'hourglass',
    'straight & narrow',
    'pear',
    'athletic',
    'full bust',
    'petite',
    'apple',
  ];
  var selectedValue = 'hourglass';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 30.0,
      ),
      child: Row(
        children: [
          Text(widget.name),
          const SizedBox(
            width: 10,
          ),
          DropdownButton(
            value: selectedValue,
            items: list.map(
              (value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedValue = value!;
                print(value);
              });
            },
          ),
        ],
      ),
    );
  }
}

class _BustSizeDropDownButton extends StatefulWidget {
  final String name;
  const _BustSizeDropDownButton({
    required this.name,
  });

  @override
  State<_BustSizeDropDownButton> createState() => _BustSizeDropDownButtonState();
}

class _BustSizeDropDownButtonState extends State<_BustSizeDropDownButton> {
  final list = []
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 30.0,
      ),
      child: Row(
        children: [
          Text(widget.name),
          const SizedBox(
            width: 10,
          ),
          DropdownButton(
            value: selectedValue,
            items: list.map(
              (value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedValue = value!;
                print(value);
              });
            },
          ),
        ],
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  const _BottomButton();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Get.to(
            () => const LookSelectionScreen(),
          );
        },
        child: const Text('NEXT'),
      ),
    );
  }
}

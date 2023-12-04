import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/component/sub_title.dart';
import 'package:ml_project/controller/selection_based_home_screen_controller.dart';

import 'look_selection_screen.dart';

class SelectionBasedHomeScreen extends StatelessWidget {
  const SelectionBasedHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SelectionBasedHomeScreenController controller = Get.put(SelectionBasedHomeScreenController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
        ),
        child: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainTitle(
                name: 'Who Are You?',
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const SubTitle(name: 'Member Information'),
                      _RowForOneInfo(
                        name: 'Name',
                        textEditingController: controller.nameTextController,
                      ),
                      _RowForOneInfo(
                        name: 'Age',
                        textEditingController: controller.ageTextController,
                      ),
                      const SubTitle(name: 'Body Information'),
                      _RowForOneInfo(
                        name: 'Weight',
                        textEditingController: controller.weightTextController,
                      ),
                      _RowForOneInfo(
                        name: 'Height',
                        textEditingController: controller.heightTextController,
                      ),
                      _BodyTypeDropDownButton(
                        name: 'Body Type',
                        controller: controller,
                      ),
                      _BustSizeDropDownButton(
                        name: 'Bust Size',
                        controller: controller,
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
              const _BottomButton()
            ],
          ),
        ),
      ),
    );
  }
}

class _RowForOneInfo extends StatelessWidget {
  final TextEditingController textEditingController;
  final String name;
  const _RowForOneInfo({
    required this.name,
    required this.textEditingController,
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
  final SelectionBasedHomeScreenController controller;
  // final List<String> list;

  const _BodyTypeDropDownButton({
    required this.name,
    required this.controller,
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
                widget.controller.bodyType = selectedValue;
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
  final SelectionBasedHomeScreenController controller;
  const _BustSizeDropDownButton({
    required this.name,
    required this.controller,
  });

  @override
  State<_BustSizeDropDownButton> createState() => _BustSizeDropDownButtonState();
}

class _BustSizeDropDownButtonState extends State<_BustSizeDropDownButton> {
  //36a, 34a, 32a, 38a, 34aa, 32aa, 36aa, 28aa, 30a, 30aa, 28a, 38aa,
  //34b, 32b, 36b, 38b, 28b, 30b, 40b, 42b, 44b,
  //34c, 36c, 32c, 38c, 42c, 28c, 40c, 30c, 46c, 44c,
  //34d, 34d+, 36d, 32d+, 32dd, 30dd, 32d, 34dd, 40ddd/e, 38d+, 34ddd/e, 38d, 36ddd/e, 38dd, 42dd, 36dd, 40dd, 30ddd/e, 32ddd/e, 36d+, 40d, 28dd, 30d, 42d, 42ddd/e, 44ddd/e, 44dd, 38ddd/e, 44d, 28ddd/e, 48d, 48dd, 28d, 46ddd/e,
  //38f, 28f, 34f, 36f, 32f, 40f, 44f, 30f, 42f, 46f,
  //40g, 34g, 28g, 36g, 32g, 38g, 42g, 44g,
  //38h, 30h, 32h, 40h, 34h, 36h, 28h, 42h, 44h
  //32i, 34i, 36i, 30i 38i, 28k, 40i
  //34j, 36j, 42j, 32j, 40j, 38j,
  final list = [
    //28aa, 30aa, 32aa, 34aa, 36aa, 38aa,
    '28aa', '30aa', '32aa', '34aa', '36aa', '38aa',
    //28a, 30a, 32a, 34a, 36a, 38a,
    '28a', '30a', '32a', '34a', '36a', '38a',
    //28b, 30b, 32b, 34b, 36b, 38b, 40b, 42b, 44b,
    '28b', '30b', '32b', '34b', '36b', '38b', '40b', '42b', '44b',
    //28c, 30c, 32c, 34c, 36c, 38c, 40c, 42c, 44c, 46c,
    '28c', '30c', '32c', '34c', '36c', '38c', '40c', '42c', '44c', '46c',
    //28d 30d, 32d, 34d, 36d, 38d, 40d, 42d, 44d, 48d
    '28d', '30d', '32d', '34d', '36d', '38d', '40d', '42d', '44d', '48d',
    //32d+, 34d+, 36d+, 38d+,
    '32d+', '34d+', '36d+', '38d+',
    //28dd, 30dd, 32dd, 34dd, 36dd, 38dd, 40dd, 42dd, 44dd, 48dd
    '28dd', '30dd', '32dd', '34dd', '36dd', '38dd', '40dd', '42dd', '44dd', '48dd',
    //28ddd/e, 30ddd/e, 32ddd/e 34ddd/e, 36ddd/e, 38ddd/e 40ddd/e, 42ddd/e, 44ddd/e 46ddd/e
    '28ddd/e', '30ddd/e', '32ddd/e', '34ddd/e', '36ddd/e', '38ddd/e', '40ddd/e', '42ddd/e', '44ddd/e', '46ddd/e',
    //28f, 30f, 32f, 34f, 36f, 38f, 40f, 42f, 44f, 46f,
    '28f', '30f', '32f', '34f', '36f', '38f', '40f', '42f', '44f', '46f',
    //28g, 32g, 34g, 36g, 38g, 40g, 42g, 44g,
    '28g', '32g', '34g', '36g', '38g', '40g', '42g', '44g',
    //28h, 30h, 32h, 34h, 36h, 38h, 40h, 42h, 44h
    '28h', '30h', '32h', '34h', '36h', '38h', '40h', '42h', '44h',
    //28i, 30i, 32i, 34i, 36i, 38i, 40i
    '28i', '30i', '32i', '34i', '36i', '38i', '40i',
    //32j, 34j, 36j, 38j, 40j, 42j,
    '32j', '34j', '36j', '38j', '40j', '42j',
  ];
  var selectedValue = '34b';

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
                widget.controller.bustSize = selectedValue;
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

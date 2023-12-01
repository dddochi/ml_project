import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/back_next_buttons.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/component/sub_title.dart';
import 'package:ml_project/screen/recommendation_selection_screen.dart';
import 'package:intl/intl.dart';

class LookSelectionScreen extends StatelessWidget {
  const LookSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
        ),
        child: SizedBox(
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MainTitle(
                  name: 'Look Selection',
                ),
                const _TopList(),
                const _BottomList(),
                const _DressList(),
                const _OuterList(),
                BackNextButtons(
                  next: () => const RecommendationSelectionScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TopList extends StatelessWidget {
  const _TopList();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SubTitle(name: 'Top'),
        //top - top, sweater, blouse, vest, tank, shirt, pullover, suit, tee, t-shirt, sweatshirt, turtleneck, sweatershirt, hoodie, crewneck, print, henley, buttondown, knit, cami, vest
        //bottom - leggings, pants, skirt, trouser, jogger, sweatpants, leggings, culotte, culottes, legging,  skirts, skort, trousers, jeans
        //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
        //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
        Row(
          children: [
            _ColumnForACloth(
              name: 'top',
            ),
            _ColumnForACloth(
              name: 'sweater',
            ),
            // _ColumnForACloth(
            //   imagePath: 'asset/clothes/jacket.jpeg',
            //   name: 'Jacket',
            // ),
            _ColumnForACloth(
              name: 'blouse',
            ),
            // _ColumnForACloth(
            //   imagePath: 'asset/clothes/blazer.jpeg',
            //   name: 'Blazer',
            // ),
            _ColumnForACloth(
              name: 'tank',
            ),
            _ColumnForACloth(
              name: 'shirt',
            ),
            _ColumnForACloth(
              name: 'pullover',
            ),
          ],
        ),
        Row(
          children: [
            _ColumnForACloth(
              name: 'suit',
            ),
            _ColumnForACloth(
              name: 'tee',
            ),
            _ColumnForACloth(
              name: 'sweatshirt',
            ),
            _ColumnForACloth(
              name: 'turtleneck',
            ),
            _ColumnForACloth(
              name: 'hoodie',
            ),
            _ColumnForACloth(
              name: 'crewneck',
            ),
          ],
        ),
        Row(
          children: [
            _ColumnForACloth(
              name: 'print',
            ),
            _ColumnForACloth(
              name: 'henley',
            ),
            _ColumnForACloth(
              name: 'buttondown',
            ),
            _ColumnForACloth(
              name: 'knit',
            ),
            _ColumnForACloth(
              name: 'cami',
            ),
            _ColumnForACloth(
              name: 'vest',
            ),
          ],
        ),
      ],
    );
  }
}

class _BottomList extends StatelessWidget {
  const _BottomList();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SubTitle(name: 'Bottom'),
        //bottom - leggings, pants, skirt, trouser, jogger, sweatpants, leggings, culotte, culottes, legging,  skirts, skort, trousers, jeans
        //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
        //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
        Row(
          children: [
            _ColumnForACloth(
              name: 'leggings',
            ),
            _ColumnForACloth(
              name: 'pants',
            ),
            _ColumnForACloth(
              name: 'skirt',
            ),
            _ColumnForACloth(
              name: 'trouser',
            ),
            _ColumnForACloth(
              name: 'jogger',
            ),
            _ColumnForACloth(
              name: 'sweatpants',
            ),
          ],
        ),
        Row(
          children: [
            _ColumnForACloth(
              name: 'culotte',
            ),
            _ColumnForACloth(
              name: 'skort',
            ),
            _ColumnForACloth(
              name: 'jeans',
            ),
          ],
        )
      ],
    );
  }
}

class _DressList extends StatelessWidget {
  const _DressList();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SubTitle(name: 'Dress'),
        //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
        //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
        Row(
          children: [
            _ColumnForACloth(
              name: 'kaftan',
            ),
            _ColumnForACloth(
              name: 'gown',
            ),
            _ColumnForACloth(
              name: 'dress',
            ),
            _ColumnForACloth(
              name: 'sheath',
            ),
            _ColumnForACloth(
              name: 'shift',
            ),
            _ColumnForACloth(
              name: 'shirtdress',
            ),
          ],
        ),
        Row(
          children: [
            _ColumnForACloth(
              name: 'ballgown',
            ),
            _ColumnForACloth(
              name: 'frock',
            ),
            _ColumnForACloth(
              name: 'maxi',
            ),
            _ColumnForACloth(
              name: 'jumpsuit',
            ),
            _ColumnForACloth(
              name: 'kimono',
            ),
            _ColumnForACloth(
              name: 'romper',
            ),
          ],
        )
      ],
    );
  }
}

class _OuterList extends StatelessWidget {
  const _OuterList();

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SubTitle(name: 'Outer'),
      //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
      //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
      Row(
        children: [
          _ColumnForACloth(
            name: 'cardigan',
          ),
          _ColumnForACloth(
            name: 'jacket',
          ),
          _ColumnForACloth(
            name: 'coat',
          ),
          _ColumnForACloth(
            name: 'overcoat',
          ),
          _ColumnForACloth(
            name: 'parka',
          ),
          _ColumnForACloth(
            name: 'tunic',
          ),
        ],
      ),
      Row(
        children: [
          _ColumnForACloth(
            name: 'trench',
          ),
          _ColumnForACloth(
            name: 'bomber',
          ),
          _ColumnForACloth(
            name: 'blazer',
          ),
          _ColumnForACloth(
            name: 'cape',
          ),
          _ColumnForACloth(
            name: 'poncho',
          ),
          _ColumnForACloth(
            name: 'down',
          ),
        ],
      ),
      Row(
        children: [
          _ColumnForACloth(
            name: 'peacoat',
          ),
          _ColumnForACloth(
            name: 'overalls',
          ),
          _ColumnForACloth(
            name: 'blouson',
          ),
          _ColumnForACloth(
            name: 'midi',
          ),
          _ColumnForACloth(
            name: 'duster',
          ),
        ],
      ),
    ]);
  }
}

class _ColumnForACloth extends StatelessWidget {
  final String name;
  const _ColumnForACloth({
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Column(
        children: [
          Image.asset(
            'asset/clothes/$name.jpeg',
            width: 200,
            height: 280,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
              left: 8.0,
              top: 8.0,
              bottom: 25.0,
            ),
            child: Text(capitalize(name)),
          ),
        ],
      ),
    );
  }

  String capitalize(String string) {
    return "${string[0].toUpperCase()}${string.substring(1)}";
  }
}

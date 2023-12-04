import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_project/component/back_next_buttons.dart';
import 'package:ml_project/component/main_title.dart';
import 'package:ml_project/component/sub_title.dart';
import 'package:ml_project/const/clothes_list.dart';
import 'package:ml_project/controller/home_screen_controller.dart';
import 'package:ml_project/screen/recommendation_selection_screen.dart';
import 'package:intl/intl.dart';

class LookSelectionScreen extends StatelessWidget {
  const LookSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController());
    List<int>? selectionList = [];
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
                _TopList(
                  selectionList: selectionList,
                ),
                _BottomList(
                  selectionList: selectionList,
                ),
                _DressList(
                  selectionList: selectionList,
                ),
                _OuterList(
                  selectionList: selectionList,
                ),
                _BackNextButtons(
                  next: () => const RecommendationSelectionScreen(),
                  selectionList: selectionList,
                  controller: controller,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TopList extends StatefulWidget {
  final List<int>? selectionList;
  const _TopList({required this.selectionList});

  @override
  State<_TopList> createState() => _TopListState();
}

class _TopListState extends State<_TopList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SubTitle(name: 'Top'),
        //top - top, sweater, blouse, vest, tank, shirt, pullover, suit, tee, t-shirt, sweatshirt, turtleneck, sweatershirt, hoodie, crewneck, print, henley, buttondown, knit, cami, vest
        //bottom - leggings, pants, skirt, trouser, jogger, sweatpants, leggings, culotte, culottes, legging,  skirts, skort, trousers, jeans
        //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
        //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
        Row(
          children: [
            //top
            _ColumnForACloth(
              cloth: CLOTHES.top,
              selectionList: widget.selectionList,
            ),
            //sweater
            _ColumnForACloth(
              cloth: CLOTHES.sweater,
              selectionList: widget.selectionList,
            ),
            //blouse
            _ColumnForACloth(
              cloth: CLOTHES.blouse,
              selectionList: widget.selectionList,
            ),
            //tank
            _ColumnForACloth(
              cloth: CLOTHES.tank,
              selectionList: widget.selectionList,
            ),
            //shirt
            _ColumnForACloth(
              cloth: CLOTHES.shirt,
              selectionList: widget.selectionList,
            ),
            //pullover
            _ColumnForACloth(
              cloth: CLOTHES.pullover,
              selectionList: widget.selectionList,
            ),
          ],
        ),
        Row(
          children: [
            //suit
            _ColumnForACloth(
              cloth: CLOTHES.suit,
              selectionList: widget.selectionList,
            ),
            //tee
            _ColumnForACloth(
              cloth: CLOTHES.tee,
              selectionList: widget.selectionList,
            ),
            //sweatshirt
            _ColumnForACloth(
              cloth: CLOTHES.sweatshirt,
              selectionList: widget.selectionList,
            ),
            //turtleneck
            _ColumnForACloth(
              cloth: CLOTHES.turtleneck,
              selectionList: widget.selectionList,
            ),
            //hoodie
            _ColumnForACloth(
              cloth: CLOTHES.hoodie,
              selectionList: widget.selectionList,
            ),
            //crewneck
            _ColumnForACloth(
              cloth: CLOTHES.crewneck,
              selectionList: widget.selectionList,
            ),
          ],
        ),
        Row(
          children: [
            //print
            _ColumnForACloth(
              cloth: CLOTHES.print,
              selectionList: widget.selectionList,
            ),
            //henley
            _ColumnForACloth(
              cloth: CLOTHES.henley,
              selectionList: widget.selectionList,
            ),
            //buttondown
            _ColumnForACloth(
              cloth: CLOTHES.buttondown,
              selectionList: widget.selectionList,
            ),
            //knit
            _ColumnForACloth(
              cloth: CLOTHES.knit,
              selectionList: widget.selectionList,
            ),
            //cami
            _ColumnForACloth(
              cloth: CLOTHES.cami,
              selectionList: widget.selectionList,
            ),
            //vest
            _ColumnForACloth(
              cloth: CLOTHES.vest,
              selectionList: widget.selectionList,
            ),
          ],
        ),
      ],
    );
  }
}

class _BottomList extends StatefulWidget {
  List<int>? selectionList;
  _BottomList({required this.selectionList});

  @override
  State<_BottomList> createState() => _BottomListState();
}

class _BottomListState extends State<_BottomList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SubTitle(name: 'Bottom'),
        //bottom - leggings, pants, skirt, trouser, jogger, sweatpants, leggings, culotte, culottes, legging,  skirts, skort, trousers, jeans
        //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
        //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
        Row(
          children: [
            //leggings
            _ColumnForACloth(
              cloth: CLOTHES.leggings,
              selectionList: widget.selectionList,
            ),
            //pants
            _ColumnForACloth(
              cloth: CLOTHES.pants,
              selectionList: widget.selectionList,
            ),
            //skirt
            _ColumnForACloth(
              cloth: CLOTHES.skirt,
              selectionList: widget.selectionList,
            ),
            //trouser
            _ColumnForACloth(
              cloth: CLOTHES.trouser,
              selectionList: widget.selectionList,
            ),
            //jogger
            _ColumnForACloth(
              cloth: CLOTHES.jogger,
              selectionList: widget.selectionList,
            ),
            //sweatpants
            _ColumnForACloth(
              cloth: CLOTHES.sweatpants,
              selectionList: widget.selectionList,
            ),
          ],
        ),
        Row(
          children: [
            //cloutte
            _ColumnForACloth(
              cloth: CLOTHES.culotte,
              selectionList: widget.selectionList,
            ),
            //skort
            _ColumnForACloth(
              cloth: CLOTHES.skort,
              selectionList: widget.selectionList,
            ),
            //jeans
            _ColumnForACloth(
              cloth: CLOTHES.jeans,
              selectionList: widget.selectionList,
            ),
          ],
        )
      ],
    );
  }
}

class _DressList extends StatefulWidget {
  final List<int>? selectionList;
  const _DressList({required this.selectionList});

  @override
  State<_DressList> createState() => _DressListState();
}

class _DressListState extends State<_DressList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SubTitle(name: 'Dress'),
        //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
        //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
        Row(
          children: [
            //kaftan
            _ColumnForACloth(
              cloth: CLOTHES.kaftan,
              selectionList: widget.selectionList,
            ),
            //gown
            _ColumnForACloth(
              cloth: CLOTHES.gown,
              selectionList: widget.selectionList,
            ),
            //dress
            _ColumnForACloth(
              cloth: CLOTHES.dress,
              selectionList: widget.selectionList,
            ),
            //sheath
            _ColumnForACloth(
              cloth: CLOTHES.sheath,
              selectionList: widget.selectionList,
            ),
            //shift
            _ColumnForACloth(
              cloth: CLOTHES.shift,
              selectionList: widget.selectionList,
            ),
            //shirtdress
            _ColumnForACloth(
              cloth: CLOTHES.shirtdress,
              selectionList: widget.selectionList,
            ),
          ],
        ),
        Row(
          children: [
            //ballgown
            _ColumnForACloth(
              cloth: CLOTHES.ballgown,
              selectionList: widget.selectionList,
            ),
            //frock
            _ColumnForACloth(
              cloth: CLOTHES.frock,
              selectionList: widget.selectionList,
            ),
            //maxi
            _ColumnForACloth(
              cloth: CLOTHES.maxi,
              selectionList: widget.selectionList,
            ),
            //jumpsuit
            _ColumnForACloth(
              cloth: CLOTHES.jumpsuit,
              selectionList: widget.selectionList,
            ),
            //kimono
            _ColumnForACloth(
              cloth: CLOTHES.kimono,
              selectionList: widget.selectionList,
            ),
            //romper
            _ColumnForACloth(
              cloth: CLOTHES.romper,
              selectionList: widget.selectionList,
            ),
          ],
        )
      ],
    );
  }
}

class _OuterList extends StatefulWidget {
  List<int>? selectionList;
  _OuterList({required this.selectionList});

  @override
  State<_OuterList> createState() => _OuterListState();
}

class _OuterListState extends State<_OuterList> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SubTitle(name: 'Outer'),
      //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
      //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
      Row(
        children: [
          //cardigan
          _ColumnForACloth(
            cloth: CLOTHES.cardigan,
            selectionList: widget.selectionList,
          ),
          //jacket
          _ColumnForACloth(
            cloth: CLOTHES.jacket,
            selectionList: widget.selectionList,
          ),
          //coat
          _ColumnForACloth(
            cloth: CLOTHES.coat,
            selectionList: widget.selectionList,
          ),
          //overcoat
          _ColumnForACloth(
            cloth: CLOTHES.overcoat,
            selectionList: widget.selectionList,
          ),
          //parka
          _ColumnForACloth(
            cloth: CLOTHES.parka,
            selectionList: widget.selectionList,
          ),
          //tunic
          _ColumnForACloth(
            cloth: CLOTHES.tunic,
            selectionList: widget.selectionList,
          ),
        ],
      ),
      Row(
        children: [
          //trench
          _ColumnForACloth(
            cloth: CLOTHES.trench,
            selectionList: widget.selectionList,
          ),
          //bomber
          _ColumnForACloth(
            cloth: CLOTHES.bomber,
            selectionList: widget.selectionList,
          ),
          //blazer
          _ColumnForACloth(
            cloth: CLOTHES.blazer,
            selectionList: widget.selectionList,
          ),
          //cape
          _ColumnForACloth(
            cloth: CLOTHES.cape,
            selectionList: widget.selectionList,
          ),
          //poncho
          _ColumnForACloth(
            cloth: CLOTHES.poncho,
            selectionList: widget.selectionList,
          ),
          //down
          _ColumnForACloth(
            cloth: CLOTHES.down,
            selectionList: widget.selectionList,
          ),
        ],
      ),
      Row(
        children: [
          //peacoat
          _ColumnForACloth(
            cloth: CLOTHES.peacoat,
            selectionList: widget.selectionList,
          ),
          //overalls
          _ColumnForACloth(
            cloth: CLOTHES.overalls,
            selectionList: widget.selectionList,
          ),
          //blouson
          _ColumnForACloth(
            cloth: CLOTHES.blouson,
            selectionList: widget.selectionList,
          ),
          //midi
          _ColumnForACloth(
            cloth: CLOTHES.midi,
            selectionList: widget.selectionList,
          ),
          //duster
          _ColumnForACloth(
            cloth: CLOTHES.duster,
            selectionList: widget.selectionList,
          ),
        ],
      ),
    ]);
  }
}

class _ColumnForACloth extends StatefulWidget {
  final CLOTHES cloth;
  List<int>? selectionList;

  _ColumnForACloth({
    required this.cloth,
    required this.selectionList,
  });

  @override
  State<_ColumnForACloth> createState() => _ColumnForAClothState();
}

class _ColumnForAClothState extends State<_ColumnForACloth> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (widget.selectionList!.length < 10) {
                  isClicked = !isClicked;
                  widget.selectionList?.add(widget.cloth.index);
                  print(widget.selectionList);
                } else {
                  isClicked = false;
                }
              });
            },
            child: Image.asset(
              'asset/clothes/${widget.cloth.name}.jpeg',
              width: 200,
              height: 280,
              fit: BoxFit.cover,
            ),
          ),
          if (isClicked)
            GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                  //widget.selectionList가 null일 때 remove가 발생가능? no..!
                  widget.selectionList?.remove(widget.cloth.index);
                  print(widget.selectionList);
                });
              },
              child: Container(
                width: 200,
                height: 280,
                color: Colors.blue.withOpacity(0.5),
              ),
            ),
          // Padding(
          // padding: const EdgeInsets.only(
          //   right: 8.0,
          //   left: 8.0,
          //   top: 8.0,
          //   bottom: 25.0,
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: 200,
              child: Text(
                capitalize(widget.cloth.name),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String capitalize(String string) {
    return "${string[0].toUpperCase()}${string.substring(1)}";
  }
}

class _BackNextButtons extends StatelessWidget {
  final Function next;
  final List<int> selectionList;
  final HomeScreenController controller;
  const _BackNextButtons({
    required this.next,
    required this.selectionList,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back')),
          const SizedBox(
            width: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(next);
              print('Final selection list = $selectionList');
              controller.selectionList = selectionList;
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ml_project/component/back_next_buttons.dart';
// import 'package:ml_project/component/column_for_cloth.dart';
// import 'package:ml_project/component/main_title.dart';
// import 'package:ml_project/component/sub_title.dart';
// import 'package:ml_project/const/clothes_list.dart';
// import 'package:ml_project/const/fake_name/ballgown_list.dart';
// import 'package:ml_project/const/fake_name/blazer_list.dart';
// import 'package:ml_project/const/fake_name/blouse_list.dart';
// import 'package:ml_project/const/fake_name/blouson_list.dart';
// import 'package:ml_project/const/fake_name/bomber_list.dart';
// import 'package:ml_project/const/fake_name/buttondown_list.dart';
// import 'package:ml_project/const/fake_name/cami_list.dart';
// import 'package:ml_project/const/fake_name/cape_list.dart';
// import 'package:ml_project/const/fake_name/cardigan_list.dart';
// import 'package:ml_project/const/fake_name/coat_list.dart';
// import 'package:ml_project/const/fake_name/crewneck_list.dart';
// import 'package:ml_project/const/fake_name/culotte_list.dart';
// import 'package:ml_project/const/fake_name/down_list.dart';
// import 'package:ml_project/const/fake_name/duster_list.dart';
// import 'package:ml_project/const/fake_name/frock_list.dart';
// import 'package:ml_project/const/fake_name/henley_list.dart';
// import 'package:ml_project/const/fake_name/hoodie_list.dart';
// import 'package:ml_project/const/fake_name/jacket_list.dart';
// import 'package:ml_project/const/fake_name/jeans_list.dart';
// import 'package:ml_project/const/fake_name/jogger_list.dart';
// import 'package:ml_project/const/fake_name/jumpsuit_list.dart';
// import 'package:ml_project/const/fake_name/kaftan_list.dart';
// import 'package:ml_project/const/fake_name/kimono_list.dart';
// import 'package:ml_project/const/fake_name/knit_list.dart';
// import 'package:ml_project/const/fake_name/leggings_list.dart';
// import 'package:ml_project/const/fake_name/maxi_list.dart';
// import 'package:ml_project/const/fake_name/midi_list.dart';
// import 'package:ml_project/const/fake_name/overalls_list.dart';
// import 'package:ml_project/const/fake_name/overcoat_list.dart';
// import 'package:ml_project/const/fake_name/pants_list.dart';
// import 'package:ml_project/const/fake_name/parka_list.dart';
// import 'package:ml_project/const/fake_name/peacoat_list.dart';
// import 'package:ml_project/const/fake_name/poncho_list.dart';
// import 'package:ml_project/const/fake_name/print_list.dart';
// import 'package:ml_project/const/fake_name/pullover_list.dart';
// import 'package:ml_project/const/fake_name/romper_list.dart';
// import 'package:ml_project/const/fake_name/shift_list.dart';
// import 'package:ml_project/const/fake_name/shirt_list.dart';
// import 'package:ml_project/const/fake_name/shirtdress_list.dart';
// import 'package:ml_project/const/fake_name/skirts_list.dart';
// import 'package:ml_project/const/fake_name/skort_list.dart';
// import 'package:ml_project/const/fake_name/suit_list.dart';
// import 'package:ml_project/const/fake_name/sweater_list.dart';
// import 'package:ml_project/const/fake_name/sweatpants_list.dart';
// import 'package:ml_project/const/fake_name/sweatshirt_list.dart';
// import 'package:ml_project/const/fake_name/tank_list.dart';
// import 'package:ml_project/const/fake_name/tee_list.dart';
// import 'package:ml_project/const/fake_name/top_list.dart';
// import 'package:ml_project/const/fake_name/trench_list.dart';
// import 'package:ml_project/const/fake_name/trouser_list.dart';
// import 'package:ml_project/const/fake_name/tunic_list.dart';
// import 'package:ml_project/const/fake_name/turtleneck_list.dart';
// import 'package:ml_project/const/fake_name/vest_list.dart';
// import 'package:ml_project/controller/selection_based_home_screen_controller.dart';
// import 'package:ml_project/model/item_model.dart';
// import 'package:ml_project/screen/recommendation_outcome_screen.dart';
// import 'package:ml_project/screen/recommendation_selection_screen.dart';
// import 'package:intl/intl.dart';

// class LookSelectionScreen extends StatelessWidget {
//   const LookSelectionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print('-------renderItemModel---------');
//     pickClothesListRandomly();
//     SelectionBasedHomeScreenController controller = Get.put(SelectionBasedHomeScreenController());
//     List<String>? selectionList = [];
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 50.0,
//         ),
//         child: SizedBox(
//           width: Get.width,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const MainTitle(
//                   name: 'Look Selection',
//                 ),
//                 _TopList(
//                   renderItemModelList: pickClothesListRandomly(),
//                   selectionList: selectionList,
//                 ),
//                 // _BottomList(
//                 //   selectionList: selectionList,
//                 // ),
//                 // _DressList(
//                 //   selectionList: selectionList,
//                 // ),
//                 // _OuterList(
//                 //   selectionList: selectionList,
//                 // ),
//                 BackNextButtons(
//                   onNextPressed: () {
//                     Get.to(() => const RecommendationOutcomeScreen());
//                     print('Final selection list = $selectionList');
//                     controller.selectionList = selectionList;
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   List<ItemModel> pickClothesListRandomly() {
//     final clothesNameList = [
//       top_list,
//       ballgown_list,
//       blazer_list,
//       blouse_list,
//       blouson_list,
//       bomber_list,
//       buttondown_list,
//       //caftan_list,
//       cami_list,
//       cape_list,
//       cardigan_list,
//       coat_list,
//       crewneck_list,
//       culotte_list,
//       //culottes_list,
//       down_list,
//       //dress_list,
//       duster_list,
//       frock_list,
//       //gown_list,
//       henley_list,
//       hoodie_list,
//       jacket_list,
//       jeans_list,
//       jogger_list,
//       jumpsuit_list,
//       kaftan_list,
//       kimono_list,
//       knit_list,
//       leggings_list,
//       //legging_list,
//       maxi_list,
//       midi_list,
//       overalls_list,
//       overcoat_list,
//       //pant_list,
//       pants_list,
//       parka_list,
//       peacoat_list,
//       poncho_list,
//       print_list,
//       pullover_list,
//       romper_list,
//       //sheath_list,
//       shift_list,
//       shirt_list,
//       shirtdress_list,
//       //skirt_list,
//       skirts_list,
//       skort_list,
//       suit_list,
//       sweater_list,
//       //sweatershirt_list,
//       sweatpants_list,
//       sweatshirt_list,
//       //t_shirt_list,
//       tank_list,
//       tee_list,
//       top_list,
//       trench_list,
//       trouser_list,
//       //trousers_list,
//       tunic_list,
//       turtleneck_list,
//       vest_list,
//     ];
//     List<ItemModel> itemModelList = [];
//     Random random = Random();

//     for (int i = 0; i < 18; i++) {
//       int randomIndex = random.nextInt(clothesNameList.length);
//       final selectedClothesName = clothesNameList[randomIndex];
//       ItemModel itemModel = renderItemModelRandomly(selectedClothesName);
//       itemModelList.add(itemModel);
//     }
//     return itemModelList;
//   }

//   ItemModel renderItemModelRandomly(clothesList) {
//     Random random = Random();

//     // 0부터 리스트의 길이까지의 무작위 정수 생성
//     int randomIndex = random.nextInt(clothesList.length);

//     // 무작위로 선택된 리스트 요소 출력
//     final selectedItem = clothesList[randomIndex];

//     return ItemModel(
//       itemId: selectedItem['item-id']!,
//       fakeName: selectedItem['fake-name']!,
//       type: selectedItem['type']!,
//       imagePath: selectedItem['image-path']!,
//     );
//   }
// }

// class _TopList extends StatefulWidget {
//   final List<ItemModel> renderItemModelList; //List<ItemModel> -> 18개가 들어옴
//   final List<String>? selectionList;
//   const _TopList({
//     required this.renderItemModelList,
//     required this.selectionList,
//   });

//   @override
//   State<_TopList> createState() => _TopListState();
// }

// class _TopListState extends State<_TopList> {
//   @override
//   Widget build(BuildContext context) {
//     // 0부터 5까지의 범위에 대해 map 함수 적용
//     List<ItemModel> result1 = widget.renderItemModelList.sublist(0, 6);

//     // 6부터 11까지의 범위에 대해 map 함수 적용
//     List<ItemModel> result2 = widget.renderItemModelList.sublist(6, 12);

//     // 12부터 17까지의 범위에 대해 map 함수 적용
//     List<ItemModel> result3 = widget.renderItemModelList.sublist(12, 18);

//     return Column(
//       children: [
//         //top - top, sweater, blouse, vest, tank, shirt, pullover, suit, tee, t-shirt, sweatshirt, turtleneck, sweatershirt, hoodie, crewneck, print, henley, buttondown, knit, cami, vest
//         //bottom - leggings, pants, skirt, trouser, jogger, sweatpants, leggings, culotte, culottes, legging,  skirts, skort, trousers, jeans
//         //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
//         //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
//         Row(
//           children: result1
//               .map((e) => ColumnForACloth(
//                     selectionList: widget.selectionList,
//                     itemId: e.itemId,
//                     type: e.type,
//                     fakeName: e.fakeName,
//                     imagePath: e.imagePath,
//                   ))
//               .toList(),
//         ),
//         Row(
//           children: result2
//               .map((e) => ColumnForACloth(
//                     selectionList: widget.selectionList,
//                     itemId: e.itemId,
//                     type: e.type,
//                     fakeName: e.fakeName,
//                     imagePath: e.imagePath,
//                   ))
//               .toList(),
//         ),
//         Row(
//           children: result3
//               .map((e) => ColumnForACloth(
//                     selectionList: widget.selectionList,
//                     itemId: e.itemId,
//                     type: e.type,
//                     fakeName: e.fakeName,
//                     imagePath: e.imagePath,
//                   ))
//               .toList(),
//         ),
//       ],
//     );
//   }
// }

// class _BottomList extends StatefulWidget {
//   List<int>? selectionList;
//   _BottomList({required this.selectionList});

//   @override
//   State<_BottomList> createState() => _BottomListState();
// }

// class _BottomListState extends State<_BottomList> {
//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         SubTitle(name: 'Bottom'),
//         //bottom - leggings, pants, skirt, trouser, jogger, sweatpants, leggings, culotte, culottes, legging,  skirts, skort, trousers, jeans
//         //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
//         //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
//         Row(
//           children: [
//             // //leggings
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.leggings,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //pants
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.pants,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //skirt
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.skirt,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //trouser
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.trouser,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //jogger
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.jogger,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //sweatpants
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.sweatpants,
//             //   selectionList: widget.selectionList,
//             // ),
//           ],
//         ),
//         Row(
//           children: [
//             //cloutte
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.culotte,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //skort
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.skort,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //jeans
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.jeans,
//             //   selectionList: widget.selectionList,
//             // ),
//           ],
//         )
//       ],
//     );
//   }
// }

// class _DressList extends StatefulWidget {
//   final List<int>? selectionList;
//   const _DressList({required this.selectionList});

//   @override
//   State<_DressList> createState() => _DressListState();
// }

// class _DressListState extends State<_DressList> {
//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         SubTitle(name: 'Dress'),
//         //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
//         //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
//         Row(
//           children: [
//             // //kaftan
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.kaftan,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //gown
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.gown,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //dress
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.dress,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //sheath
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.sheath,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //shift
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.shift,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //shirtdress
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.shirtdress,
//             //   selectionList: widget.selectionList,
//             // ),
//           ],
//         ),
//         Row(
//           children: [
//             // //ballgown
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.ballgown,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //frock
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.frock,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //maxi
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.maxi,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //jumpsuit
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.jumpsuit,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //kimono
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.kimono,
//             //   selectionList: widget.selectionList,
//             // ),
//             // //romper
//             // _ColumnForACloth(
//             //   cloth: CLOTHES.romper,
//             //   selectionList: widget.selectionList,
//             // ),
//           ],
//         )
//       ],
//     );
//   }
// }

// class _OuterList extends StatefulWidget {
//   List<int>? selectionList;
//   _OuterList({required this.selectionList});

//   @override
//   State<_OuterList> createState() => _OuterListState();
// }

// class _OuterListState extends State<_OuterList> {
//   @override
//   Widget build(BuildContext context) {
//     return const Column(children: [
//       SubTitle(name: 'Outer'),
//       //dress -  kaftan, gown, dress, sheath, shift, shirtdress, ballgown, frock, maxi, jumpsuit, kimono, romper
//       //outer - cardigan, jacket, coat, overcoat, parka, tunic, caftan, bomber, blazer, cape, poncho, down, peacoat, overalls, combo, blouson, midi, duster, trench
//       Row(
//         children: [
//           //cardigan
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.cardigan,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //jacket
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.jacket,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //coat
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.coat,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //overcoat
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.overcoat,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //parka
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.parka,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //tunic
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.tunic,
//           //   selectionList: widget.selectionList,
//           // ),
//         ],
//       ),
//       Row(
//         children: [
//           // trench
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.trench,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //bomber
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.bomber,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //blazer
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.blazer,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //cape
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.cape,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //poncho
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.poncho,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //down
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.down,
//           //   selectionList: widget.selectionList,
//           // ),
//         ],
//       ),
//       Row(
//         children: [
//           // //peacoat
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.peacoat,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //overalls
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.overalls,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //blouson
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.blouson,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //midi
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.midi,
//           //   selectionList: widget.selectionList,
//           // ),
//           // //duster
//           // _ColumnForACloth(
//           //   cloth: CLOTHES.duster,
//           //   selectionList: widget.selectionList,
//           // ),
//         ],
//       ),
//     ]);
//   }
// }

// class _BackNextButtons extends StatelessWidget {
//   final Function next;
//   final List<String> selectionList;
//   final SelectionBasedHomeScreenController controller;
//   const _BackNextButtons({
//     required this.next,
//     required this.selectionList,
//     required this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           ElevatedButton(
//               onPressed: () {
//                 Get.back();
//               },
//               child: const Text('Back')),
//           const SizedBox(
//             width: 10.0,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Get.to(next);
//               print('Final selection list = $selectionList');
//               controller.selectionList = selectionList;
//             },
//             child: const Text('Next'),
//           ),
//         ],
//       ),
//     );
//   }
// }

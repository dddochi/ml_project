import 'package:flutter/material.dart';

class ClothComponent extends StatefulWidget {
  //final CLOTHES cloth;
  final String itemId;
  final String type;
  final String fakeName;
  final String imagePath;
  List<String>? selectionList;

  ClothComponent({
    super.key,
    //required this.cloth,
    required this.selectionList,
    required this.itemId,
    required this.type,
    required this.fakeName,
    required this.imagePath,
  });

  @override
  State<ClothComponent> createState() => _ClothComponentState();
}

class _ClothComponentState extends State<ClothComponent> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Column(
        children: [
          SizedBox(
            width: 200, // Set a fixed width for the Stack
            height: 280,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (widget.selectionList!.length < 10) {
                          isClicked = !isClicked;
                          widget.selectionList?.add(widget.itemId);
                          print(widget.selectionList);
                        } else {
                          isClicked = false;
                        }
                      });
                    },
                    child: Image.asset(
                      widget.imagePath,
                      width: 200,
                      height: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (isClicked)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isClicked = !isClicked;
                          //widget.selectionList가 null일 때 remove가 발생가능? no..!
                          widget.selectionList?.remove(widget.itemId);
                          print(widget.selectionList);
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 280,
                        color: Colors.blue.withOpacity(0.5),
                      ),
                    ),
                  ),

                // Padding(
                // padding: const EdgeInsets.only(
                //   right: 8.0,
                //   left: 8.0,
                //   top: 8.0,
                //   bottom: 25.0,
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: SizedBox(
              width: 200,
              child: Text(
                capitalize(widget.fakeName),
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

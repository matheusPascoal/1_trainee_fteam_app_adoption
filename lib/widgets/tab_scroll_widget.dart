import 'package:flutter/material.dart';
import 'package:pet_adoption_app/theme/pet_color.dart';

class TabaScroll extends StatefulWidget {
  final Widget? image;
  final String? text;
  const TabaScroll({
    Key? key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  State<TabaScroll> createState() => _TabaScrollState();
}

class _TabaScrollState extends State<TabaScroll> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            color: PETColors().details,
            borderRadius: BorderRadius.circular(30)),
        width: size.width * 0.35,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.image!,
            SizedBox(
              width: 20,
            ),
            Text(widget.text!),
          ],
        ),
      ),
    );
  }
}

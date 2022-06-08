import 'package:flutter/material.dart';

class CheckHeart extends StatefulWidget {
  const CheckHeart({Key? key}) : super(key: key);

  @override
  State<CheckHeart> createState() => _CheckHeartState();
}

class _CheckHeartState extends State<CheckHeart> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isCheck = !isCheck;
        });
      },
      child: Icon(
        isCheck ? Icons.favorite_rounded : Icons.favorite_border_rounded,
        color: Colors.red,
      ),
    );
  }
}

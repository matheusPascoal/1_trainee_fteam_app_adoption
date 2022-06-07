import 'package:flutter/material.dart';
import 'package:pet_adoption_app/theme/pet_color.dart';

class CardTileWidget extends StatefulWidget {
  final String? text;
  final Widget? image;
  final Color? color;
  final String? breed;
  const CardTileWidget(
      {Key? key, this.text, this.image, this.color, this.breed})
      : super(key: key);

  @override
  State<CardTileWidget> createState() => _CardTileWidgetState();
}

bool isChecked = false;

class _CardTileWidgetState extends State<CardTileWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                child: widget.image!,
                decoration: BoxDecoration(
                    color: widget.color!,
                    borderRadius: BorderRadius.circular(20)),
                width: size.width * 0.3,
                height: size.height * 0.12,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.text!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            isChecked = value!;
                            setState(() {});
                          })
                    ],
                  ),
                  Text(
                    widget.breed!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Female, 8 mounths old',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_sharp, color: PETColors().details),
                      Text('1,5 Km de Distancia'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

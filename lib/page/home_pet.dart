import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pet_adoption_app/model/menu_model.dart';

import 'package:pet_adoption_app/theme/pet_color.dart';

import 'package:pet_adoption_app/widgets/card_tile.dart';

import 'package:pet_adoption_app/widgets/perfil_widget.dart';
import 'package:pet_adoption_app/widgets/tab_scroll_widget.dart';

class PetHome extends StatefulWidget {
  const PetHome({Key? key}) : super(key: key);

  @override
  State<PetHome> createState() => _PetHomeState();
}

class _PetHomeState extends State<PetHome> {
  @override
  void initState() {
    super.initState();
  }

  final menuList = [
    MenuModel(image: 'assets/dog.png', nome: 'Dog'),
    MenuModel(image: 'assets/cat.png', nome: 'Cat'),
    MenuModel(image: 'assets/dragon.png', nome: 'Dragon')
  ];
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: PETColors().background,
          flexibleSpace: PerfilWidiget(),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 246, 246),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: size.height * 1,
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.format_align_left_sharp,
                          size: size.width * 0.09,
                        ),
                      )),
                    ),
                    Container(
                      width: size.width * 0.84,
                      height: 60,
                      child: ListView.builder(
                        itemCount: menuList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final item = menuList[index];
                          return TabaScroll(
                            isSelected: index == indexSelected,
                            onTap: () {
                              setState(() {
                                indexSelected = index;
                              });
                            },
                            image: Image.asset(
                              item.image,
                              width: size.width * 0.08,
                            ),
                            text: item.nome,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    height: size.height * 1,
                    child: ListView(
                      children: [
                        CardTileWidget(
                          onTap: () {},
                          breed: 'Akita',
                          image: Image.asset('assets/dog1.png'),
                          text: 'Sparky',
                          color: Colors.amber,
                        ),
                        CardTileWidget(
                          onTap: () {},
                          breed: 'Beagle',
                          image: Image.asset('assets/dog2.png'),
                          text: 'Toby',
                          color: Color.fromARGB(255, 6, 205, 231),
                        ),
                        CardTileWidget(
                          onTap: () {},
                          breed: 'Boxer',
                          image: Image.asset('assets/dog3.png'),
                          text: 'Zap',
                          color: Color.fromARGB(255, 214, 9, 9),
                        ),
                        CardTileWidget(
                          onTap: () {},
                          breed: 'Buldogue francês',
                          image: Image.asset(
                            'assets/dog4.png',
                          ),
                          text: 'Rex',
                          color: Color.fromARGB(255, 247, 93, 4),
                        ),
                        CardTileWidget(
                          onTap: () {},
                          breed: 'Boxer',
                          image: Image.asset('assets/dog5.png'),
                          text: 'Xiu',
                          color: Color.fromARGB(255, 42, 241, 24),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

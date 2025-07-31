import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping/Widgets/Categoria/categoria_item.dart';

class CategoriaLista extends StatelessWidget {
  const CategoriaLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoriaItem(
            key: ValueKey('CategoriaItem1'),
            icon: FontAwesomeIcons.car,
          ),
          CategoriaItem(
            key: ValueKey('CategoriaItem2'),
            icon: FontAwesomeIcons.bacon,
          ),
          CategoriaItem(
            key: ValueKey('CategoriaItem3'),
            icon: FontAwesomeIcons.addressBook,
          ),
          CategoriaItem(
            key: ValueKey('CategoriaItem4'),
            icon: FontAwesomeIcons.xbox,
          ),
          CategoriaItem(
            key: ValueKey('CategoriaItem5'),
            icon: FontAwesomeIcons.gasPump,
          ),
          CategoriaItem(
            key: ValueKey('CategoriaItem6'),
            icon: FontAwesomeIcons.weightHanging,
          ),
        ],
      ),
    );
    ;
  }
}

import 'package:flutter/material.dart';

class InputAnimado extends StatelessWidget {
  final AnimationController controller;
  final Animation<Color?> containerColorAnim;
  final Animation<double> containerOpacityAnim;
  final Animation<double> containerBorderRadiusAnime;
  final Animation<double> containerSizeAnim;

  InputAnimado({super.key, required this.controller})
    : containerOpacityAnim = Tween(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(parent: controller, curve: Interval(0.7, 0.9))),
      containerSizeAnim = Tween(
        begin: 60.0,
        end: 200.0,
      ).animate(CurvedAnimation(parent: controller, curve: Interval(0.2, 0.3))),

      containerBorderRadiusAnime = Tween(begin: 0.0, end: 30.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.25, 0.4)),
      ),
      containerColorAnim = ColorTween(begin: Colors.white, end: Colors.black12)
          .animate(
            CurvedAnimation(parent: controller, curve: Interval(0.0, 0.25)),
          );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _animate);
  }

  Widget _animate(context, child) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: containerColorAnim.value,
        borderRadius: BorderRadius.all(
          Radius.circular(containerBorderRadiusAnime.value),
        ),
      ),
      margin: EdgeInsets.all(5),
      width: containerSizeAnim.value,
      child: Opacity(
        opacity: containerOpacityAnim.value,
        child: Row(
          children: <Widget>[
            SizedBox(width: 20),
            Icon(Icons.search),
            SizedBox(width: 20),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Pesquisar",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

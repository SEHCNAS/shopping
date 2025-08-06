import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shopping/Widgets/input_animado.dart';

class PesquisarBarra extends StatefulWidget {
  const PesquisarBarra({super.key});

  @override
  State<PesquisarBarra> createState() => _PesquisarBarraState();
}

class _PesquisarBarraState extends State<PesquisarBarra>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool menuAberto = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InputAnimado(controller: _controller),
        TextButton(
          onPressed: () {
            !menuAberto ? _controller.forward() : _controller.reverse();
            menuAberto = !menuAberto;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller,
            semanticLabel: "Mais",
          ),
        ),
      ],
    );
  }
}

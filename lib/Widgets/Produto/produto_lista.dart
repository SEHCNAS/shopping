import 'package:flutter/material.dart';
import 'package:shopping/Widgets/Produto/produto_item.dart';

class ProdutoLista extends StatelessWidget {
  final Axis scrollDirection;

  const ProdutoLista({super.key, required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: [
          ProdutoItem(
            key: ValueKey("ProdutoItem1"),
            imageURL:
                "https://raw.githubusercontent.com/balta-io/7185/refs/heads/master/assets/product-1.png",
            marca: "Marca 1",
            titulo: "Produto 1",
            preco: 99.99,
          ),
          ProdutoItem(
            key: ValueKey("ProdutoItem2"),
            imageURL:
                "https://raw.githubusercontent.com/balta-io/7185/refs/heads/master/assets/product-2.png",
            marca: "Marca 2",
            titulo: "Produto 2",
            preco: 50.99,
          ),
          ProdutoItem(
            key: ValueKey("ProdutoItem3"),
            imageURL:
                "https://raw.githubusercontent.com/balta-io/7185/refs/heads/master/assets/product-3.png",
            marca: "Marca 3",
            titulo: "Produto 3",
            preco: 45.99,
          ),
          ProdutoItem(
            key: ValueKey("ProdutoItem4"),
            imageURL:
                "https://raw.githubusercontent.com/balta-io/7185/refs/heads/master/assets/product-4.png",
            marca: "Marca 4",
            titulo: "Produto 4",
            preco: 1.99,
          ),
        ],
      ),
    );
  }
}

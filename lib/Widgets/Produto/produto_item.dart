import 'package:flutter/material.dart';
import 'package:shopping/Pages/Product_Page.dart';

class ProdutoItem extends StatelessWidget {
  final String imageURL;
  final String titulo;
  final String marca;
  final double preco;

  const ProdutoItem({
    super.key,
    required this.imageURL,
    required this.titulo,
    required this.marca,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      width: 180,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    imageURL: imageURL,
                    titulo: titulo,
                    marca: marca,
                  ),
                ),
              );
            },
            child: Image.network(
              imageURL,
              height: 180,
              width: 180,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            child: Text(
              titulo,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(height: 5),
          Text(
            marca,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 5),
          Text(
            preco.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String imageURL;
  final String titulo;
  final String marca;

  const ProductPage({
    super.key,
    required this.imageURL,
    required this.titulo,
    required this.marca,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              expandedHeight: 500,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: imageURL,
                  child: Image.network(imageURL, fit: BoxFit.cover),
                ),
              ),
            ),
          ];
        },
        body: Container(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  marca,
                  style: TextStyle(
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Detalhes",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus risus augue, et euismod mi convallis ac. Duis dignissim tincidunt odio eget auctor. Phasellus semper sem in vestibulum suscipit. Fusce ultrices est ipsum, et commodo augue pretium vitae. Ut dapibus odio est, vel cursus nunc fermentum eu. Morbi ipsum mi, pulvinar ac porta ac, porta et lectus. Phasellus venenatis, neque a suscipit consectetur, libero urna porta neque, eget blandit lacus velit in enim. Vivamus dapibus consequat venenatis. Cras non sem molestie, dignissim felis nec, cursus dui. Donec vulputate eget tellus quis sodales. Suspendisse ullamcorper, dolor at egestas bibendum, ex nunc dapibus eros, at varius diam ligula eu mi. Nulla placerat, magna ut maximus gravida, dui mauris aliquet augue, vel ullamcorper est elit fringilla nisi.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

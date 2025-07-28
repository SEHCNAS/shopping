import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: const Color.fromRGBO(170, 232, 228, 1),
              elevation: 0,
              expandedHeight: 500,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.network(
                  "https://raw.githubusercontent.com/balta-io/7185/refs/heads/master/assets/product-1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Container(
          color: const Color.fromRGBO(170, 232, 228, 1),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus risus augue",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Nome do  vendedor do produto 1",
                  style: TextStyle(
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Detalhes",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus risus augue, et euismod mi convallis ac. Duis dignissim tincidunt odio eget auctor. Phasellus semper sem in vestibulum suscipit. Fusce ultrices est ipsum, et commodo augue pretium vitae. Ut dapibus odio est, vel cursus nunc fermentum eu. Morbi ipsum mi, pulvinar ac porta ac, porta et lectus. Phasellus venenatis, neque a suscipit consectetur, libero urna porta neque, eget blandit lacus velit in enim. Vivamus dapibus consequat venenatis. Cras non sem molestie, dignissim felis nec, cursus dui. Donec vulputate eget tellus quis sodales. Suspendisse ullamcorper, dolor at egestas bibendum, ex nunc dapibus eros, at varius diam ligula eu mi. Nulla placerat, magna ut maximus gravida, dui mauris aliquet augue, vel ullamcorper est elit fringilla nisi.",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping/Widgets/Categoria/categoria_lista.dart';
import 'package:shopping/Widgets/Pesquisar_Barra.dart';
import 'package:shopping/Widgets/Produto/produto_item.dart';
import 'package:shopping/Widgets/Produto/produto_lista.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          color: const Color.fromRGBO(170, 232, 228, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 50),
              PesquisarBarra(),
              SizedBox(height: 20),
              Text(
                "Categorias",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                height: 65,
                child: CategoriaLista(key: ValueKey('CategoriaLista1')),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Top vendas",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(onPressed: () {}, child: Text("Ver todos")),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 340,
                child: ProdutoLista(
                  key: ValueKey('ProdutoLista1'),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

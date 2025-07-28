import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping/Pages/Product_Page.dart';

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
              Pesquisar(),
              SizedBox(height: 20),
              Text(
                "Categorias",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(height: 65, child: CategoriaLista()),
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
              Container(height: 340, child: ProdutoLista(context)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Pesquisar() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
    ),
    height: 50,
    padding: EdgeInsets.only(left: 10),
    child: Row(
      children: <Widget>[
        Icon(Icons.search),

        Container(
          width: 200,
          padding: EdgeInsets.all(10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Pesquisar produtos",
              labelStyle: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget CategoriaLista() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CategoriaItem(FontAwesomeIcons.lightbulb),
        CategoriaItem(FontAwesomeIcons.car),
        CategoriaItem(FontAwesomeIcons.addressBook),
        CategoriaItem(FontAwesomeIcons.xbox),
        CategoriaItem(FontAwesomeIcons.gasPump),
        CategoriaItem(FontAwesomeIcons.weightHanging),
      ],
    ),
  );
}

Widget CategoriaItem(IconData icon) {
  return Container(
    width: 45,

    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 2.0),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(45)),
    ),
    child: Icon(icon, color: Colors.black54, size: 20),
  );
}

Widget ProdutoLista(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ProdutoItem(context),
        ProdutoItem(context),
        ProdutoItem(context),
        ProdutoItem(context),
      ],
    ),
  );
}

Widget ProdutoItem(BuildContext context) {
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
              MaterialPageRoute(builder: (context) => ProductPage()),
            );
          },
          child: Image.network(
            "https://raw.githubusercontent.com/balta-io/7185/refs/heads/master/assets/product-1.png",
            height: 180,
            width: 180,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 50,
          child: Text(
            "Produto 1 Produto 1 Produto 1 Produto 1 ",
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
          "Marca do Produto",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 5),
        Text(
          "R\$ 99,99",
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

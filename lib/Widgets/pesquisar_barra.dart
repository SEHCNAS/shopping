import 'package:flutter/material.dart';

class PesquisarBarra extends StatelessWidget {
  const PesquisarBarra({super.key});

  @override
  Widget build(BuildContext context) {
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
}

import 'package:flutter/material.dart';
import 'package:shopping/Pages/Cart_page.dart';
import 'package:shopping/Pages/Home_Page.dart';
import 'package:shopping/Pages/Login_Page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(children: [HomePage(), CartPage(), LoginPage()]),
      bottomNavigationBar: new TabBar(
        labelColor: Colors.green,
        unselectedLabelColor: Colors.black54,
        indicatorColor: Colors.green,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Tab(icon: Icon(Icons.home), text: "Home"),
          Tab(icon: Icon(Icons.shopping_cart), text: "Cart"),
          Tab(icon: Icon(Icons.person), text: "Login"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping/Pages/cart_page.dart';
import 'package:shopping/Pages/home_page.dart';
import 'package:shopping/Pages/login_page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(children: [HomePage(), CartPage(), LoginPage()]),
      bottomNavigationBar: TabBar(
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

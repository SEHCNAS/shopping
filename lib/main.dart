import 'package:flutter/material.dart';
import 'package:shopping/Pages/tabs_page.dart';
import 'package:shopping/themes/dark_theme.dart';
import 'package:shopping/themes/light_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      home: DefaultTabController(length: 3, child: TabsPage()),
    );
  }
}

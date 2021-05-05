import 'package:flutter/material.dart';
import 'package:me_/pages/home_page.dart';
import 'package:me_/pages/login_page.dart';
import 'package:me_/utils/routes.dart';
import 'package:slimy_card/slimy_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.cardRoutes: (context) => SlimyCard()
      },
    );
  }
}

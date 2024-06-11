import 'package:final_plant_app_2/home_page_2.dart';
import 'package:flutter/material.dart';
import 'package:final_plant_app_2/home_page.dart';
import 'package:final_plant_app_2/welcome_page.dart';

class DefaultDecoration extends StatefulWidget {
  const DefaultDecoration({super.key});
  @override
  State<DefaultDecoration> createState() {
    return _DefaultDecorationState();
  }
}

class _DefaultDecorationState extends State<DefaultDecoration> {
  String activePage = 'welcome-page';

  /*@override //State classes to do some extra initialization work - executed once after class is instantiated.
  void initState() {
    activePage = WelcomePage(switchPage);
    super.initState();
  }*/

  void switchPage() {
    setState(() {
      activePage = 'home-page';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = WelcomePage(switchPage);

    if (activePage == 'home-page') {
      screenWidget = const HomePage();
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //color: Color.fromARGB(255, 26, 78, 27),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 51, 112, 53),
              Color.fromARGB(255, 72, 155, 75),
              Color.fromARGB(255, 87, 179, 90),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}

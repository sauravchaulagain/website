import 'package:flutter/material.dart';
import 'package:personalwebsite/nav.dart';

class HomePagee extends StatelessWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Material(
        color: Colors.black,
        child: Column(
          children: [
            NavBarItem(name: 'Home', icon: Icons.home, onPressed: () {})
          ],
        ),
      ),
      body: Column(),
    );
  }
}

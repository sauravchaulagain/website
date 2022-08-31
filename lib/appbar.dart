import 'package:flutter/material.dart';

import 'package:personalwebsite/about.dart';
import 'package:personalwebsite/contactme.dart';
import 'package:personalwebsite/home_page.dart';
import 'package:personalwebsite/project.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  List<double> item = [];
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
// height: size.height * 0.1,
// width: size.width * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
//border: Border.all(color: Colors.white),
          ),
          alignment: Alignment.center,
          child: Image.asset(
            'images/Logo.png',
            height: size.height * 0.2,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: size.height * 0.05,
          width: size.width * 0.5,
          decoration: BoxDecoration(
//color: Colors.white,
              borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: const Text(
                    'HOME',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => about(),
                        ));
                  },
                  child: const Text(
                    'ABOUT',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => project(),
                        ));
                  },
                  child: const Text(
                    'PROJECT',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactMe(),
                        ));
                  },
                  child: Text(
                    'CONTACT',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personalwebsite/Front_page.dart';
import 'package:personalwebsite/SocialMeida.dart';
import 'package:personalwebsite/about.dart';
import 'package:personalwebsite/appbar.dart';
import 'package:personalwebsite/contactme.dart';
import 'package:personalwebsite/project.dart';

import 'conclusion.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                height: size.height * 1,
                width: size.width * 1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    nav(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              height: size.height * 0.3,
                              width: size.width * 0.3,
                              decoration: const BoxDecoration(),
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Hello!\n',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: 'I am Saurav\n',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          letterSpacing: 1.0),
                                    ),
                                    TextSpan(
                                      text: 'Flutter Developer',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\nWelcome to my World.',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              width: size.width * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: Colors.red),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => FrontPage(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Get Started',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FrontPage(),
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Row(
                      children: [SocialMedia()],
                    ),
                    Text('lorem 30'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    about(),
                    SizedBox(
                      height: 30,
                    ),
                    project(),
                    SizedBox(
                      height: 30,
                    ),
                    ContactMe(),
                    SizedBox(
                      height: 30,
                    ),
                    conclusion(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

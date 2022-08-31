import 'package:flutter/material.dart';
import 'package:personalwebsite/SocialMeida.dart';
import 'package:personalwebsite/about.dart';
import 'package:personalwebsite/contactme.dart';
import 'package:personalwebsite/project.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: ListView(
          children: [
            about(),
            project(),
            SizedBox(
              height: 50,
            ),
            ContactMe(),
          ],
        ),
      ),
    );
  }
}

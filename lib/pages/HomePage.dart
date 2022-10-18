import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homekey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        key: homekey,
        height: size.height * 1,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/12804210_5053309.jpg'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Image.asset(
                'assets/abc.png',
                height: size.height * 1,
              ),
              SizedBox(width: size.width * 0.15),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Hello!\n',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextSpan(
                    text: 'I am Saurav\n',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
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
                ]),
              ),
            ],
          ),
        ));
  }
}

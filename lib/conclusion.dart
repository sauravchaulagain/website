import 'package:flutter/material.dart';

class conclusion extends StatefulWidget {
  const conclusion({Key? key}) : super(key: key);

  @override
  State<conclusion> createState() => _conclusionState();
}

class _conclusionState extends State<conclusion> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        image: DecorationImage(
            image: AssetImage('images/copy.jpg'), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'images/Logo.png',
            height: size.height * 0.3,
          ),
          Container(
            width: size.width * 0.3,
            child: Text(
              'Its sometimes her behaviour are contented. Do listening am eagerness oh objection collected. Together gay\n@2021 Saurav ',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

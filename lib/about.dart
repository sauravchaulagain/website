import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
          child: Text(
            'About',
            style: TextStyle(
                fontSize: 42, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: size.height * 0.9,
          width: size.width * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: size.width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(
                    "I create tailored websites for small businesses and start-ups to help them reach bigger audiencesMy background includes corporate and freelance experience, with a history of design projects. I have worked on nationwide and international marketing and product launch campaigns for global brands.Literally, a website needs 4 seconds to give clear message of what is it for, what is the target audience and impress the visitor with visual appearance.Design can fascinatingly change our decisions and emotions. It converts website visitors into your customers. So I am here to help you with it.",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

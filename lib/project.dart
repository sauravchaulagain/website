import 'package:flutter/material.dart';

class project extends StatelessWidget {
  const project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
          child: Text(
            'Project',
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * 0.7,
              width: size.width * 0.460,
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: AssetImage('images/flutter.png'),
                      height: 400,
                      width: 500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Mobile Application',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * 0.7,
              width: size.width * 0.460,
              decoration: BoxDecoration(border: Border.all(color: Colors.pink)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: AssetImage('images/flutterweb.jpg'),
                      height: 400,
                      width: 500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Web Application',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * 0.7,
              width: size.width * 0.460,
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: AssetImage('images/graphicdesign.png'),
                      height: 400,
                      width: 500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Graphic Design',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              ),
            ),
            Container(
              height: size.height * 0.7,
              width: size.width * 0.460,
              decoration: BoxDecoration(border: Border.all(color: Colors.pink)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: AssetImage('images/a.jpg'),
                      height: 400,
                      width: 500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        ' Application',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

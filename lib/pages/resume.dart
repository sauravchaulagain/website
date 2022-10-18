import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 5), // changes position of shadow
        ),
      ], color: Colors.white),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: HoverCrossFadeWidget(
                  duration: Duration(milliseconds: 300),
                  firstChild: Container(
                    child: Image.asset(
                      'assets/CV_saurav.jpg',
                      height: 400,
                    ),
                  ),
                  secondChild: Container(
                    height: 800,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/CV_saurav.jpg'),
                    )),
                  ),
                ),
              ),
            ),
            Container(
              width: 600,
              child: Column(
                children: [
                  Text(
                    "RESUME",
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    'Take a look at my Resume .The resume is developed using PhotoShop.',
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

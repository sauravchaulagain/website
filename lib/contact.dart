import 'package:flutter/material.dart';
import 'package:personalwebsite/socialmedia.dart';

class Contact extends StatelessWidget {
  Contact({Key? key}) : super(key: key);
  final contactkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: contactkey,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 5), // changes position of shadow
        ),
      ], color: Colors.white),
      height: 350,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              'Contact',
              style: TextStyle(
                fontFamily: 'hello',
                fontSize: 38,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrange,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      "Name:\n\nEmail:\n\nPhone:\n\nAddress:",
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "Saurav Chaulagain\n\nsauravchaulagain39@gmail.com\n\n+977 9866556708\n\nSuryabinayak-01,Bhaktapur",
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Social Media',
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(height: 40),
                    SocialMedia(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

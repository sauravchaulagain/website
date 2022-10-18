import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);
  final aboutkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutkey,
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
        child: Row(
          children: [
            Container(
              width: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Text(
                      "I'm Saurav Hasan. I passionate about Cross-platform Mobile application development (Flutter). I have 1.5 year experience in flutter development. I'm constantly striving to learn new things and improve. I follow industry news; regularly tinker with new technologies, and read books and blogs to keep my skills current. I am completed graduation in Computer Science & Engineering. I have great skills in Flutter, Dart, HTML, CSS, Bootstrap framework, and also have expertise in Word Press.I have a keen knowledge of Firebase, SQLite database management system. I am also has great experience in UX/UI designing Mobile Application",
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 100),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Basic Information',
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Age:\n\nPhone:\n\nEmail:\n\nAddress:",
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "21\n\n+977 9866556708\n\nsauravchaulagain39@gmail.com\n\nSuryabinayak-01,Bhaktapur",
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

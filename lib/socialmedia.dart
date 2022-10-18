import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.075,
      width: size.width * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () async {
                  const url =
                      'https://www.facebook.com/profile.php?id=100082619644241';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: Icon(FontAwesomeIcons.facebook)),
            IconButton(
              onPressed: () async {
                const url = 'https://github.com/sauravchaulagain';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: Icon(FontAwesomeIcons.github),
            ),
            IconButton(
                onPressed: () async {
                  const url =
                      'https://www.linkedin.com/in/saurav-chaulagain-aa368b234/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: Icon(FontAwesomeIcons.linkedin)),
            IconButton(
                onPressed: () async {
                  const url = 'https://mail.google.com/mail/u/1/#inbox/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: Icon(Icons.ac_unit_outlined)),
            IconButton(
                onPressed: () async {
                  const url = 'https://www.facebook.com/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: Icon(Icons.abc)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarr extends StatefulWidget {
  const TabBarr({Key? key}) : super(key: key);

  @override
  State<TabBarr> createState() => _TabBarrState();
}

class _TabBarrState extends State<TabBarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 550, right: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'About',
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.production_quantity_limits,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Project',
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.file_copy_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Resume',
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Contact',
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

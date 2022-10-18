import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:personalwebsite/pages/HomePage.dart';
import 'package:personalwebsite/pages/ProjectPage.dart';
import 'package:personalwebsite/pages/about.dart';
import 'package:personalwebsite/pages/resume.dart';
import 'package:personalwebsite/tabbar.dart';

import 'contact.dart';

class WebPage extends StatelessWidget {
  static const _extraScrollSpeed = 30;
  final ScrollController _scrollController = ScrollController();
  WebPage({Key? key}) : super(key: key) {
    _scrollController.addListener(() {
      ScrollDirection scrollDirection =
          _scrollController.position.userScrollDirection;
      if (scrollDirection != ScrollDirection.idle) {
        double scrollEnd = _scrollController.offset +
            (scrollDirection == ScrollDirection.reverse
                ? _extraScrollSpeed
                : -_extraScrollSpeed);
        scrollEnd = min(_scrollController.position.maxScrollExtent,
            max(_scrollController.position.minScrollExtent, scrollEnd));
        _scrollController.jumpTo(scrollEnd);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 65,
            width: double.infinity,
            color: Colors.red,
            child: TabBarr(),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('assets/19549381_SL-101619-24150-73.jpg'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.only(right: 80, left: 80),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      HomePage(),
                      SizedBox(height: 50),
                      Contact(),
                      SizedBox(height: 50),
                      About(),
                      SizedBox(height: 50),
                      Resume(),
                      SizedBox(height: 50),
                      ProjectPage(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

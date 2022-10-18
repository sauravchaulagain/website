import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final projectkey = GlobalKey();
  bool isHover = false;

  Future scrollto() async {
    final context = projectkey.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: projectkey,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 5), // changes position of shadow
        ),
      ], color: Colors.white),
      height: 1500,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Projects",
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 58,
              fontWeight: FontWeight.w700,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () async {
                  const url = 'https://github.com/sauravchaulagain/Plants-Info';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: HoverCrossFadeWidget(
                  duration: Duration(milliseconds: 300),
                  firstChild: Container(
                    child: Image.asset(
                      'assets/plantsinfo.jpg',
                      height: 400,
                    ),
                  ),
                  secondChild: Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/mobileapp.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    )),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Plants Info \nMobile Application',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 38,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  const url =
                      'https://www.facebook.com/profile.php?id=100082619644241';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: HoverCrossFadeWidget(
                  duration: Duration(milliseconds: 300),
                  firstChild: Image.asset(
                    'assets/desktopapp.jpg',
                    height: 400,
                  ),
                  secondChild: Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/desktopapp.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    )),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Portfolio Website',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 38,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () async {
                  const url =
                      'https://github.com/sauravchaulagain/AALU_CROSS_flutter';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: HoverCrossFadeWidget(
                  duration: Duration(milliseconds: 300),
                  firstChild: Image.asset(
                    'assets/aalucross.jpg',
                    height: 400,
                  ),
                  secondChild: Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/gamedevelopment.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    )),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'TicTacToe Game',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 38,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  const url =
                      'https://github.com/sauravchaulagain/Flutter_Calculator';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: HoverCrossFadeWidget(
                  duration: Duration(milliseconds: 300),
                  firstChild: Image.asset(
                    'assets/calculator.jpg',
                    height: 400,
                  ),
                  secondChild: Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/mobileapp.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    )),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Calculator \n Flutter Application ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 38,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//   children: [
//
//     ),
//     SizedBox(height: 50),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         HoverCrossFadeWidget(
//           duration: Duration(milliseconds: 300),
//           firstChild: Image.asset(
//             'assets/mobileapp.jpg',
//             height: 400,
//           ),
//           secondChild: Container(
//             height: 400,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('assets/mobileapp.jpg'),
//               fit: BoxFit.cover,
//               opacity: 0.2,
//             )),
//             child: Center(
//                 child: Text(
//               'Plants Info \n Mobile Application',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'hello',
//                 fontSize: 38,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//         HoverCrossFadeWidget(
//           duration: Duration(milliseconds: 300),
//           firstChild: Image.asset(
//             'assets/desktopapp.jpg',
//             height: 400,
//           ),
//           secondChild: Container(
//             height: 400,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('assets/desktopapp.jpg'),
//               fit: BoxFit.cover,
//               opacity: 0.2,
//             )),
//             child: Center(
//                 child: Text(
//               'Portfolio Website',
//               style: TextStyle(
//                 fontFamily: 'hello',
//                 fontSize: 38,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//       ],
//     ),
//     SizedBox(
//       height: 20,
//     ),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         HoverCrossFadeWidget(
//           duration: Duration(milliseconds: 300),
//           firstChild: Image.asset(
//             'assets/gamedevelopment.jpg',
//             height: 400,
//           ),
//           secondChild: Container(
//             height: 400,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('assets/gamedevelopment.jpg'),
//               fit: BoxFit.cover,
//               opacity: 0.2,
//             )),
//             child: Center(
//                 child: Text(
//               'TicTacToe Game',
//               style: TextStyle(
//                 fontFamily: 'hello',
//                 fontSize: 38,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//         HoverCrossFadeWidget(
//           duration: Duration(milliseconds: 300),
//           firstChild: Image.asset(
//             'assets/mobileapp.jpg',
//             height: 400,
//           ),
//           secondChild: Container(
//             height: 400,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('assets/mobileapp.jpg'),
//               fit: BoxFit.cover,
//               opacity: 0.2,
//             )),
//             child: Center(
//                 child: Text(
//               'Calculator \n Flutter Application ',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'hello',
//                 fontSize: 38,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//       ],
//     )
//   ],
// ),

// MouseRegion(
// onEnter: (f) {
// setState(() {
// isHover = true;
// });
// },
// onExit: (f) {
// setState(() {
// isHover = false;
// });
// },
// cursor: SystemMouseCursors.click,
// child: AnimatedContainer(
// duration: Duration(milliseconds: 200),
// height: isHover ? size.height * 0.5 : size.height * 0.44,
// child: Image.asset(
// 'assets/desktopapp.jpg',
// height: size.height * 0.44,
// ),
// ),
// ),

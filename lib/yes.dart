import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalwebsite/pages/HomePage.dart';
import 'package:personalwebsite/pages/ProjectPage.dart';

class yes extends StatefulWidget {
  const yes({Key? key}) : super(key: key);

  @override
  State<yes> createState() => _yesState();
}

class _yesState extends State<yes> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Default Scaffold'),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return ProjectPage();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Custom Scaffold'),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

//     return Scaffold(
//       body: Row(
//         children: [
//           NavigationRail(
//             // minWidth: 100,
//             labelType: NavigationRailLabelType.all,
//             selectedIndex: _selectedIndex,
//             onDestinationSelected: (index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             destinations: const [
//               NavigationRailDestination(
//                 padding: EdgeInsets.all(12),
//                 icon: Icon(Icons.home),
//                 label: Text('Home'),
//               ),
//               NavigationRailDestination(
//                 padding: EdgeInsets.all(12),
//                 icon: Icon(CupertinoIcons.profile_circled),
//                 label: Text('About'),
//               ),
//               NavigationRailDestination(
//                 padding: EdgeInsets.all(12),
//                 icon: Icon(CupertinoIcons.doc_checkmark),
//                 label: Text('Project'),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

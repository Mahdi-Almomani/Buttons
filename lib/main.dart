// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Home();
//   }
// }

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   String text = " the text shuld be  updated after pressing";
//   Color myDefaultColor = Colors.white;
//   bool uaeCheckBox = false;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         drawer: Drawer(),
//         body: Container(
//           color: myDefaultColor,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     // onLongPress: () {
//                     //   setState(() {
//                     //     text = "the text updated";
//                     //     myDefaultColor = Colors.red;
//                     //   });
//                     // },
//                     onPressed: () {
//                       setState(() {
//                         text = "the text updated";
//                         myDefaultColor = Colors.amber;
//                       });
//                     },
//                     child: Text(
//                       "press me please",
//                       style: TextStyle(fontSize: 30),
//                     )),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         text = "the text updated to upper case";
//                         myDefaultColor = Colors.red;
//                         text = text.toUpperCase();
//                         print(text.length);
//                       });
//                     },
//                     child: Text(
//                       "press me please",
//                       style: TextStyle(fontSize: 30),
//                     )),
//                 Divider(
//                   height: 100,
//                 ),
//                 Text(
//                   "$text",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Row(
//                   children: [
//                     Text("UAE"),
//                     Checkbox(
//                         value: uaeCheckBox,
//                         onChanged: ((value) {
//                           setState(() {
//                             uaeCheckBox = value!;
//                           });
//                         })),
//                     Divider(height: 100),
//                     Text("USA"),
//                     Checkbox(
//                         value: uaeCheckBox,
//                         onChanged: ((val) {
//                           setState(() {
//                             uaeCheckBox = val!;
//                           });
//                         }))
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String myText = "Hello FLutter team";
  Color myColor = Colors.amber;
  double myWidth = 200;
  Icon myIcon = Icon(Icons.home);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          // decoration: BoxDecoration(
          //     ,
          //     gradient: LinearGradient(colors: [Colors.blue, Colors.grey])),
          width: myWidth,
          color: myColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myText = "updated form button #1";
                        myColor = Colors.pink;
                      });
                    },
                    child: Text("Button #1")),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      myWidth = 400;
                      myText = "updated from button #2";
                    });
                  },
                  icon: Icon(Icons.mobile_friendly),
                  label: Text("Button #2"),
                ),
                MaterialButton(
                  child: Text(
                    "Button #3",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      myText = "updated from button #3";
                      myIcon = Icon(Icons.person);
                    });
                  },
                ),
                Text(myText),
                IconButton(
                  onPressed: () {
                    setState(() {
                      myIcon = Icon(Icons.phone);
                    });
                  },
                  icon: myIcon,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

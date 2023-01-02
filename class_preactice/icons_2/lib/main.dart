import 'package:flutter/material.dart';

void main() {
  runApp(Allapp());
}

class Allapp extends StatelessWidget {
  const Allapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text(
            "Rounded",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.accessible_rounded,
            color: Colors.orange,
          ),
          centerTitle: true,
        ),
        body: Column(
          //    mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.amberAccent,
              margin: EdgeInsets.all(20),
              child: TextButton(
                  child: Text(
                    "Cllick Here 1.",
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan),
                  ),
                  onPressed: () {
                    print("The output is Here......");
                  }),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(24),
              color: Colors.amberAccent,
              child: TextButton(
                  child: Text(
                    "Click here 2.",
                    style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                        fontStyle: FontStyle.italic),
                  ),
                  onPressed: () {
                    print("he output is 2....");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   const SampleApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: const SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   const SampleAppPage({super.key});

//   @override
//   State<SampleAppPage> createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   // Default value for toggle.
//   bool toggle = true;
//   void _toggle() {
//     setState(() {
//       toggle = !toggle;
//     });
//   }

//   Widget _getToggleChild() {
//     if (toggle) {
//       return const Text('Toggle One');
//     } else {
//       return ElevatedButton(
//         onPressed: () {},
//         child: const Text('Toggle Two'),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sample App'),
//       ),
//       body: Center(
//         child: _getToggleChild(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _toggle,
//         tooltip: 'Update Text',
//         child: const Icon(Icons.update),
//       ),
//     );
//   }
// }